/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "xuartps.h"
#include "xgpiops.h"
#include "spips.h"
#include "Trigger.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "Adc9228_func.h"
#include "xscutimer.h"
#include "xtime_l.h"
#include "UpdateFirm.h"
#include "lwip/err.h"
#include "lwipopts.h"
#include "lwip/ip_addr.h"

#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/tcp.h"
#include "xil_cache.h"

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif


#define SmallToBigEndianu32(x) ((((x) & 0xff) << 24) | \
                                (((x) & 0xff00) << 8) | \
                                (((x) & 0xff0000) >> 8) | \
                                (((x) & 0xff000000) >> 24))

#define BigToSmallEndianu32(x) ((((x) & 0xff) << 24) | \
                                (((x) & 0xff00) << 8) | \
                                (((x) & 0xff0000) >> 8) | \
                                (((x) & 0xff000000) >> 24))

#define SmallToBigEndianu16(x) ((((x) & 0xff) << 8) | (((x) & 0xff00) >> 8))

#define BigToSmallEndianu16(x) ((((x) & 0xff) << 8) | (((x) & 0xff00) >> 8))

#define SmallToBigEndianuint8_t(x) (x)

#define BigToSmallEndianuint8_t(x) (x)


/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif

//function declare
void tcp_fasttmr(void);
void tcp_slowtmr(void);
void lwip_init();
static void Trigger_intr_Handler(void *param);
static int IntcInitFunction(u16 DeviceId);
void print_ip(char *msg, struct ip_addr *ip) ;
void print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw);
void send_DataInfo();
void spi(u32 BW,u32 T,u32 PRT);
void TriggerInit();
void senspi(u8 A, u8 B, u8 C);
void senspi_1(u8 A, u8 B);
int start_Adc9228TcpApp();
XGpioPs GpioPs_Init();
void print_app_header();
int process_TriggerIntr(struct TriggerInst *TriggerInstPtr);	//20230727

volatile int TimerLwip = 0;
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *netif;
static int ResetRxCntr = 0;
#define RESET_RX_CNTR_LIMIT	400

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

// command data from PC through TCP/IP
extern uint8_t rx_buffer[2048*8] __attribute__ ((__aligned__(32)));
extern uint8_t * rx_bufferPtr = (uint8_t *)rx_buffer;

// Adc data to PC through TCP/IP
extern uint8_t tx_buffer[131072] __attribute__ ((__aligned__(32)));
extern uint8_t * tx_bufferPtr= (uint8_t *)tx_buffer;

// data buffer between PC and ZYNQ through port 10 data_connected_pcb
extern uint8_t data_buffer[2048*8] __attribute__ ((__aligned__(32)));
extern uint8_t * data_bufferPtr;

// interruption of TriggerCh constant define
#define INT_CFG0_OFFSET 		0x00000C00
#define TriggerCh0_INT_ID 		61
#define TriggerCh1_INT_ID 		62
#define TriggerCh2_INT_ID 		63
#define TriggerCh3_INT_ID 		64
#define INTC_DEVICE_ID 			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define INT_TYPE_RISING_EDGE 	0x03
#define INT_TYPE_HIGHLEVEL 		0x01
#define INT_MASK 				0x03

struct TriggerInst TriggerInstCh0;
struct TriggerInst TriggerInstCh1;
struct TriggerInst TriggerInstCh2;
struct TriggerInst TriggerInstCh3;

uint8_t TriggerCh0_mem[TriggerDDRSpaceSize] __attribute__((__aligned__(32)));
uint8_t TriggerCh1_mem[TriggerDDRSpaceSize] __attribute__((__aligned__(32)));
uint8_t TriggerCh2_mem[TriggerDDRSpaceSize] __attribute__((__aligned__(32)));
uint8_t TriggerCh3_mem[TriggerDDRSpaceSize] __attribute__((__aligned__(32)));
uint8_t mem[TriggerDDRSpaceSize] __attribute__((__aligned__(32)));

static XScuGic INTCInst;
static XScuGic *INTCInstPtr = &INTCInst;

volatile uint32_t Trigger_Intr = 0;
int intr_cnt = 0;
uint32_t AdcData_Length = 1024;	//bytes
uint8_t  start_flag = 0;
uint32_t Frame_Length = 8192;
uint32_t Data_Length;
uint32_t TransferPacketSize = 1024;

uint16_t DataInfo_length = 38;	//������λ���õ�����λ��
struct DataInfo{
    uint16_t header;
    uint32_t AdcData_Length;
    uint32_t Ch0_BaseAddr;
    uint32_t Ch0_toggle;
    uint32_t Ch1_BaseAddr;
    uint32_t Ch1_toggle;
    uint32_t Ch2_BaseAddr;
    uint32_t Ch2_toggle;
    uint32_t Ch3_BaseAddr;
	uint32_t Ch3_toggle;
}__attribute__((packed));
struct DataInfo DataInfo;


//---------------------------------main---------------------------------
int main()
{
	struct ip_addr ipaddr, netmask, gw;
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	netif = &server_netif;

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

/* Define this board specific macro in order perform PHY reset on ZCU102 */
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	// initialization
	init_platform();

#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initliaze IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);
#endif
	print_app_header();

	lwip_init();

  	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	netif_set_default(netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(netif);

#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(netif);
	dhcp_timoutcntr = 24;

	while(((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(netif);

	if (dhcp_timoutcntr <= 0) {
		if ((netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = netif->ip_addr.addr;
	gw.addr = netif->gw.addr;
	netmask.addr = netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);

	/* start the application (web server, rxtest, txtest, etc..) */
	start_Adc9228TcpApp();

	/* write GPIO to start Adc9228_top module */
	static XGpioPs psGpioInstancePtr;
	psGpioInstancePtr = GpioPs_Init(psGpioInstancePtr);   //GPIO��ʼ��
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, 54,1);
	XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, 54,1);
	XGpioPs_WritePin(&psGpioInstancePtr, 54, 1);

	/* initialize pll */
	spi(2000,200,400);	//BW,T,PRT�̶�
	printf("spi�������\n");

	/* Initialization of TriggerCh module */
	TriggerInit();

	Data_Length = Frame_Length - 8;  //Frame_Length - 8

	/* receive and process packets */
	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}

		xemacif_input(netif);

		//send 7f 7e to port 8 then start
		if((ReadyToHandle_CommandRx == 1) & (start_flag == 0))
		{
			IntcInitFunction(INTC_DEVICE_ID);
			TriggerChOnce(&TriggerInstCh0);
			TriggerChOnce(&TriggerInstCh1);
			TriggerChOnce(&TriggerInstCh2);
			TriggerChOnce(&TriggerInstCh3);
			start_flag = 1;
			send_DataInfo();	//send Data Information through port 7, 20230724
		}
		//AD Data accepted from TriggerCh module, 20230727
		if(Trigger_Intr == 1)
		{
			Trigger_Intr = 0;
			intr_cnt += 1;
			printf("intr_cnt = %d \n", intr_cnt);

			//Read Data to mem and send to PC through TCP/IP port 10
			process_TriggerIntr(&TriggerInstCh0);
			process_TriggerIntr(&TriggerInstCh1);
			process_TriggerIntr(&TriggerInstCh2);
			process_TriggerIntr(&TriggerInstCh3);	//change lwipopts.h TCP_SND_QUEUELEN, 20230727

			if(intr_cnt < 20)
			{
				//start data transmission once more
				TriggerChOnce(&TriggerInstCh0);
				TriggerChOnce(&TriggerInstCh1);
				TriggerChOnce(&TriggerInstCh2);
				TriggerChOnce(&TriggerInstCh3);
				send_DataInfo();
			}
		}

//		xemacif_input(netif);

	}
  
	/* never reached */
	cleanup_platform();

	return 0;
}
//--------------------------------end---------------------------------


int process_TriggerIntr(struct TriggerInst *TriggerInstPtr)	//���ڷ���
{

//20230831
//------------------------------------------------------------------------------------------------
	uint8_t *RingPtr;
	uint8_t *DmaBasePtr = TriggerInstPtr->TriggerChDMAParam.TrigDMAStartAddr;

	uint32_t FileSize = 0;
	int send_cnt = 0;	//20230909

	TriggerInstPtr->TriggerToggle = TrigGetToggle(TriggerInstPtr->TriggerBase);
	TriggerInstPtr->TriggerVector = TrigGetVector(TriggerInstPtr->TriggerBase) & TriggerInstPtr->TriggerChMuxParam.TrigMuxEnableMask;
	TriggerInstPtr->TriggerVectorPending = TrigGetVectorPending(TriggerInstPtr->TriggerBase);

	Xil_DCacheInvalidateRange((uint32_t)TriggerInstPtr->TriggerChDMAParam.TrigDMAStartAddr, TriggerDDRSpaceSize);

	TriggerInstPtr->TriggerRingEnd = (uint8_t *)((TriggerInstPtr->TriggerToggle + (TriggerInstPtr->TriggerChDMAParam.TrigDMALength-TriggerInstPtr->TriggerChDMAParam.TrigDMAPosition)*2) & TriggerDDRSpaceMask);
	TriggerInstPtr->TriggerRingStart = (uint8_t *)(((uint32_t)TriggerInstPtr->TriggerRingEnd + TriggerDDRSpaceSize - TriggerInstPtr->TriggerChDMAParam.TrigDMALength*2) & TriggerDDRSpaceMask);

	RingPtr = TriggerInstPtr->TriggerRingStart;
	FileSize = TriggerInstPtr->TriggerChDMAParam.TrigDMALength;

	data_bufferPtr = data_buffer;

	xil_printf("DmaBasePtr = 0x%08x, RingPtr = 0x%08x\r\n",DmaBasePtr , RingPtr);

//	Xil_DCacheInvalidateRange(((uint32_t)RingPtr+(uint32_t)DmaBasePtr), 1024);

	for (uint32_t i = 0; i < (FileSize >> 10); i++)
	{
		if ((((uint32_t)TriggerDDRSpaceSize) - (uint32_t)RingPtr) >= 1024)//Data_Length = 1024
		{
			memcpy((uint8_t *)data_buffer + i*1024        , (uint8_t *)((uint32_t)RingPtr+(uint32_t)DmaBasePtr), 1024);
			RingPtr = RingPtr + 1024;
		}
		else
		{
			uint32_t res = ((((uint32_t)TriggerDDRSpaceSize) - (uint32_t)RingPtr) & TriggerDDRSpaceMask);
			memcpy((uint8_t *)(data_buffer + i*1024)      , (uint8_t *)((uint32_t)RingPtr+(uint32_t)DmaBasePtr), res);
			memcpy((uint8_t *)(data_buffer + i*1024 + res), DmaBasePtr, 1024-res);
			RingPtr = (uint8_t *)res;
		}
	}

	//TCP���ͣ�20230909
	err_t err;
	//send Adc9228 Data to PC through TCP/IP
	for (uint32_t i = 0; i <= (FileSize >> 10); i++)
	{
		if(i == (AdcData_Length >> 10))
		{
//			send_data(data_bufferPtr + i*1024, AdcData_Length - (i*1024));

			err = tcp_write(data_connected_pcb, data_bufferPtr + i*1024, FileSize - (i*1024), 1);
			if (err != ERR_OK)
			{
				xil_printf("TCP client: Error on tcp_write: %d\r\n", err);
				data_connected_pcb = NULL;
			}
			err = tcp_output(data_connected_pcb);
			if (err != ERR_OK)
			{
				xil_printf("TCP client: Error on tcp_output: %d\r\n", err);
				data_connected_pcb = NULL;
			}
		}

		else
		{
//			send_data(data_bufferPtr + i*1024, 1024);

			err = tcp_write(data_connected_pcb, data_bufferPtr + i*1024, 1024, 1);
			if (err != ERR_OK)
			{
				xil_printf("TCP client: Error on tcp_write: %d\r\n", err);
				data_connected_pcb = NULL;
			}
			err = tcp_output(data_connected_pcb);
			if (err != ERR_OK)
			{
				xil_printf("TCP client: Error on tcp_output: %d\r\n", err);
				data_connected_pcb = NULL;
			}
		}

		send_cnt = send_cnt + 1;
		if(send_cnt == 1)
		{
			xemacif_input(netif);
			send_cnt = 0;
		}
	}

	return XST_SUCCESS;
}


void send_DataInfo()	//����������Ϣ����, 20230728
{
	err_t err;
	uint8_t* DataInfo_ptr;
	DataInfo_ptr = (uint8_t*) &DataInfo;
	DataInfo.header = BigToSmallEndianu16(0x7f8e);
	DataInfo.AdcData_Length = (AdcData_Length);
	DataInfo.Ch0_BaseAddr = ((uint32_t)(TriggerInstCh0.TriggerChDMAParam.TrigDMAStartAddr));
	DataInfo.Ch0_toggle = (TriggerInstCh0.TriggerToggle = TrigGetToggle(TriggerInstCh0.TriggerBase));

	DataInfo.Ch1_BaseAddr = ((uint32_t)(TriggerInstCh1.TriggerChDMAParam.TrigDMAStartAddr));
	DataInfo.Ch1_toggle = (TriggerInstCh1.TriggerToggle = TrigGetToggle(TriggerInstCh1.TriggerBase));

	DataInfo.Ch2_BaseAddr = ((uint32_t)(TriggerInstCh2.TriggerChDMAParam.TrigDMAStartAddr));
	DataInfo.Ch2_toggle = (TriggerInstCh2.TriggerToggle = TrigGetToggle(TriggerInstCh2.TriggerBase));

	DataInfo.Ch3_BaseAddr = ((uint32_t)(TriggerInstCh3.TriggerChDMAParam.TrigDMAStartAddr));
	DataInfo.Ch3_toggle = (TriggerInstCh3.TriggerToggle = TrigGetToggle(TriggerInstCh3.TriggerBase));

	memset(DataInfo_ptr + sizeof(DataInfo), 0, Frame_Length-sizeof(DataInfo));

	err = tcp_write(connected_pcb, DataInfo_ptr, sizeof(DataInfo), 1);
	if (err != ERR_OK)
	{
		xil_printf("TCP client: Error on tcp_write: %d\r\n", err);
		connected_pcb = NULL;
		return;
	}
	err = tcp_output(connected_pcb);
	if (err != ERR_OK)
	{
		xil_printf("TCP client: Error on tcp_output: %d\r\n", err);
		connected_pcb = NULL;
		return;
	}
//	xemacif_input(netif);

}

//�жϷ������
static void Trigger_intr_Handler(void *param){
	Trigger_Intr = 1;
}

//�ж������������ú���
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType){
	int mask;
	intType &= INT_MASK;
	mask = XScuGic_DistReadReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4);
	mask &= ~(INT_MASK << (intId%16)*2);
	mask |= intType << ((intId%16)*2);
	XScuGic_DistWriteReg(InstancePtr, INT_CFG0_OFFSET + (intId/16)*4, mask);
}

//�жϳ�ʼ������
int IntcInitFunction(u16 DeviceId){
	XScuGic_Config *IntcConfig;
	int status;
	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,&INTCInst);
	Xil_ExceptionEnable();

	// Connect TriggerCh0 ~ TriggerCh3 interrupt to handler
	status = XScuGic_Connect(&INTCInst,TriggerCh0_INT_ID, (Xil_ExceptionHandler)Trigger_intr_Handler, NULL);
	if(status != XST_SUCCESS)
	return XST_FAILURE;

	status = XScuGic_Connect(&INTCInst,TriggerCh1_INT_ID, (Xil_ExceptionHandler)Trigger_intr_Handler, (void *)2);
	if(status != XST_SUCCESS)
	return XST_FAILURE;

	status = XScuGic_Connect(&INTCInst,TriggerCh2_INT_ID, (Xil_ExceptionHandler)Trigger_intr_Handler, (void *)3);
	if(status != XST_SUCCESS)
	return XST_FAILURE;

	status = XScuGic_Connect(&INTCInst,TriggerCh3_INT_ID, (Xil_ExceptionHandler)Trigger_intr_Handler, (void *)4);
	if(status != XST_SUCCESS)
	return XST_FAILURE;

	// Set interrupt type of TriggherCh0 ~ TriggerCh3 to RISING EDGE
	IntcTypeSetup(&INTCInst, TriggerCh0_INT_ID, INT_TYPE_RISING_EDGE);
	IntcTypeSetup(&INTCInst, TriggerCh1_INT_ID, INT_TYPE_RISING_EDGE);
	IntcTypeSetup(&INTCInst, TriggerCh2_INT_ID, INT_TYPE_RISING_EDGE);
	IntcTypeSetup(&INTCInst, TriggerCh3_INT_ID, INT_TYPE_RISING_EDGE);

	// Enable TriggherCh0 ~ TriggerCh3 interrupts in the controller
	XScuGic_Enable(&INTCInst, TriggerCh0_INT_ID);
	XScuGic_Enable(&INTCInst, TriggerCh1_INT_ID);
	XScuGic_Enable(&INTCInst, TriggerCh2_INT_ID);
	XScuGic_Enable(&INTCInst, TriggerCh3_INT_ID);

	return XST_SUCCESS;
}

void ParameterInit(struct TriggerInst *TriggerInstPtr)
{
	if((TriggerInstPtr -> TriggerID) == 0){
		TriggerInstPtr -> TriggerChDMAParam.TrigDMAStartAddr = TriggerCh0_mem;
	}

	if((TriggerInstPtr -> TriggerID) == 1){
		TriggerInstPtr -> TriggerChDMAParam.TrigDMAStartAddr = TriggerCh1_mem;
	}

	if((TriggerInstPtr -> TriggerID) == 2){
		TriggerInstPtr -> TriggerChDMAParam.TrigDMAStartAddr = TriggerCh2_mem;
	}

	if((TriggerInstPtr -> TriggerID) == 3){
		TriggerInstPtr -> TriggerChDMAParam.TrigDMAStartAddr = TriggerCh3_mem;
	}

	TriggerInstPtr ->TriggerChGenParam.TrigGenAMPHIGHThreshold = 0;
	TriggerInstPtr ->TriggerChGenParam.TrigGenAMPLOWHThreshold = 0;
	TriggerInstPtr ->TriggerChGenParam.TrigGenAMPLOWLThreshold = 0;
	TriggerInstPtr ->TriggerChGenParam.TrigGenPulseThreshold = 100;
	TriggerInstPtr ->TriggerChGenParam.TrigGenDemodThreshold = 0;
	TriggerInstPtr ->TriggerChGenParam.TrigGenSFTimeout = 0;

	TriggerInstPtr ->TriggerChMuxParam.TrigMuxEnableMask = 0x00000002;
	TriggerInstPtr ->TriggerChMuxParam.TrigMuxAndMask = 0xffffffff;
	TriggerInstPtr ->TriggerChMuxParam.TrigMuxOrMask = 0xffffffff;
	TriggerInstPtr ->TriggerChMuxParam.TrigMuxSel = 0x0;

	TriggerInstPtr ->TriggerChDMAParam.TrigDMAPosition = 0;
	TriggerInstPtr ->TriggerChDMAParam.TrigDMALength = 1024;	//д�����������Ϊ1chirp
}

void TriggerInit(){
	TriggerInstCh0.TriggerBase = TriggerCh0Base;
	TriggerInstCh0.TriggerID = 0;

	TriggerInstCh1.TriggerBase = TriggerCh1Base;
	TriggerInstCh1.TriggerID = 1;

	TriggerInstCh2.TriggerBase = TriggerCh2Base;
	TriggerInstCh2.TriggerID = 2;

	TriggerInstCh3.TriggerBase = TriggerCh3Base;
	TriggerInstCh3.TriggerID = 3;

	ParameterInit(&TriggerInstCh0);
	ParameterInit(&TriggerInstCh1);
	ParameterInit(&TriggerInstCh2);
	ParameterInit(&TriggerInstCh3);

	TrigReset(TriggerInstCh0.TriggerBase);
	TrigReset(TriggerInstCh1.TriggerBase);
	TrigReset(TriggerInstCh2.TriggerBase);
	TrigReset(TriggerInstCh3.TriggerBase);

	TriggerInstInit(&TriggerInstCh0);
	TriggerInstInit(&TriggerInstCh1);
	TriggerInstInit(&TriggerInstCh2);
	TriggerInstInit(&TriggerInstCh3);

}

//ǰ��spi����
u8 ReadBuf[MAX_DATA];
u8 SendBuf[MAX_DATA];	//spi��buffer����

void senspi(u8 A, u8 B, u8 C)
{
	SpiPs_Init(SPI_DEVICE_ID);

		SendBuf[0] = A;
		SendBuf[1] = B;
		SendBuf[2] = C;             //0x000204
		SpiPs_Send(SendBuf,3);
}

void senspi_1(u8 A, u8 B)
{
	SpiPs_Init(SPI_DEVICE_ID_1);

		SendBuf[0] = A;
		SendBuf[1] = B;
		SpiPs_Send(SendBuf,2);
}

void spi(u32 BW,u32 T,u32 PRT)
{

	senspi(0x00,0x02,0x04);			//R2

	senspi(0x00,0x27,0x3A);			//R39 //Mux���,readback
	senspi(0x00,0x26,0xFA);			//R38 //MOD�����FLAG1
	senspi(0x00,0x25,0x17);			//R37 //TRIG2���
	senspi(0x00,0x24,0xF2);			//R36 //TRIG1�����FLAG0
	senspi(0x00,0x23,0x41);			//R35 //
	senspi(0x00,0x22,0x84);			//R34 //
	senspi(0x00,0x21,0x20);			//R33 //
	senspi(0x00,0x20,0x00);			//R32 //
	senspi(0x00,0x1F,0x2A);			//R31 //
	senspi(0x00,0x1E,0x06);			//R30 //

	senspi(0x00,0x1D,0x00);			//R29 //
	senspi(0x00,0x1C,0x14);			//R28 //��������Icp=2mA
	senspi(0x00,0x1B,0x08);			//R27 //OSC_2X=0,PFD_DLY=860ps
	senspi(0x00,0x1A,0x00);			//R26 //
	senspi(0x00,0x19,0x01);			//R25 //R=1

	/*PLL�ϵ�*/
	senspi(0x00,0x02,0x02);			//R2X //

	/*�ر�б��*/
	senspi(0x00,0x3A,0x00);    //R58

	/*RAMP0����*/
	senspi(0x00,0x5C,0x25);     //R92
	senspi(0x00,0x5B,0x2E);     //R91
	senspi(0x00,0x5A,0xE0);     //R90
	senspi(0x00,0x59,0x00);     //R89
	senspi(0x00,0x58,0x00);     //R88
	senspi(0x00,0x57,0x01);     //R87
	senspi(0x00,0x56,0xB5);     //R86

	/*RAMP1����*/
	senspi(0x00,0x63,0x42);     //R99
	senspi(0x00,0x62,0x2E);     //R98
	senspi(0x00,0x61,0xE0);     //R97
	senspi(0x00,0x60,0x3F);     //R96
	senspi(0x00,0x5F,0xFF);     //R95
	senspi(0x00,0x5E,0xFE);     //R94
	senspi(0x00,0x5D,0x4B);     //R93

	/*RAMP2 ����*/
	senspi(0x00,0x6A,0x60);   //R106  1124 2030 lzm
	senspi(0x00,0x69,0x00);   //R105  1124 2030 lzm
	senspi(0x00,0x68,0x01);   //R104  1124 2030 lzm
	senspi(0x00,0x67,0x00);   //R103  1124 2030 lzm
	senspi(0x00,0x66,0x00);   //R102  1124 2030 lzm
	senspi(0x00,0x65,0x00);   //R101  1124 2030 lzm
	senspi(0x00,0x64,0x00);   //R100  1124 2030 lzm

	/*RAMP3 ����*/
	senspi(0x00,0x71,0x80);   //R113  1124 2030 lzm
	senspi(0x00,0x70,0x00);   //R112  1124 2030 lzm
	senspi(0x00,0x6F,0x01);   //R111  1124 2030 lzm
	senspi(0x00,0x6E,0x00);   //R110  1124 2030 lzm
	senspi(0x00,0x6D,0x00);   //R109  1124 2030 lzm
	senspi(0x00,0x6C,0x00);   //R108  1124 2030 lzm
	senspi(0x00,0x6B,0x00);   //R107  1124 2030 lzm

	/*RAMP4 ����*/
	senspi(0x00,0x78,0xA0);   //R120  1124 2030 lzm
	senspi(0x00,0x77,0x00);   //R119  1124 2030 lzm
	senspi(0x00,0x76,0x01);   //R118  1124 2030 lzm
	senspi(0x00,0x75,0x00);   //R117  1124 2030 lzm
	senspi(0x00,0x74,0x00);   //R116  1124 2030 lzm
	senspi(0x00,0x73,0x00);   //R115  1124 2030 lzm
	senspi(0x00,0x72,0x00);   //R114  1124 2030 lzm

	/*RAMP5 ����*/
	senspi(0x00,0x7F,0xC0);   //R127  1124 2030 lzm
	senspi(0x00,0x7E,0x00);   //R126  1124 2030 lzm
	senspi(0x00,0x7D,0x01);   //R125  1124 2030 lzm
	senspi(0x00,0x7C,0x00);   //R124  1124 2030 lzm
	senspi(0x00,0x7B,0x00);   //R123  1124 2030 lzm
	senspi(0x00,0x7A,0x00);   //R122  1124 2030 lzm
	senspi(0x00,0x79,0x00);   //R121  1124 2030 lzm

	/*RAMP6 ����*/
	senspi(0x00,0x86,0xE0);   //R134  1124 2030 lzm
	senspi(0x00,0x85,0x00);   //R133  1124 2030 lzm
	senspi(0x00,0x84,0x01);   //R132  1124 2030 lzm
	senspi(0x00,0x83,0x00);   //R131  1124 2030 lzm
	senspi(0x00,0x82,0x00);   //R130  1124 2030 lzm
	senspi(0x00,0x81,0x00);   //R129  1124 2030 lzm
	senspi(0x00,0x80,0x00);   //R128  1124 2030 lzm

	/*RAMP7 ����*/
	senspi(0x00,0x8D,0x00);   //R141  1124 2030 lzm
	senspi(0x00,0x8C,0x00);   //R140  1124 2030 lzm
	senspi(0x00,0x8B,0x01);   //R139  1124 2030 lzm
	senspi(0x00,0x8A,0x00);   //R138  1124 2030 lzm
	senspi(0x00,0x89,0x00);   //R137  1124 2030 lzm
	senspi(0x00,0x88,0x00);   //R136  1124 2030 lzm
	senspi(0x00,0x87,0x00);   //R135  1124 2030 lzm

	   /*��ʼƵ������*/
	senspi(0x00,0x18,0xFF);     //R24
	senspi(0x00,0x17,0xFF);     //R23
	senspi(0x00,0x16,0xFF);     //R22
	senspi(0x00,0x15,0x80);     //R21
	senspi(0x00,0x14,0x00);     //R20
	senspi(0x00,0x13,0x00);     //R19
	senspi(0x00,0x12,0x2C);     //R18
	senspi(0x00,0x11,0x00);     //R17
	senspi(0x00,0x10,0x25);     //R16

	   /*б���������*/
	senspi(0x00,0x54,0x00);     //R84
	senspi(0x00,0x53,0x00);     //R83
	senspi(0x00,0x52,0x00);     //R82      //RAMP_LIMIT_HIGH
	senspi(0x00,0x51,0xCF);     //R81
	senspi(0x00,0x50,0xFF);     //R80
	senspi(0x00,0x4F,0xFF);     //R79
	senspi(0x00,0x4E,0x00);     //R78      //RAMP_LIMIT_LOW
	senspi(0x00,0x4D,0x80);     //R77
	senspi(0x00,0x4C,0x00);     //R76
	senspi(0x00,0x4B,0x00);     //R75
	senspi(0x00,0x4A,0x00);     //R74      //FSK_DEV
	senspi(0x00,0x49,0x00);     //R73
	senspi(0x00,0x48,0x00);     //R72
	senspi(0x00,0x47,0x00);     //R71
	senspi(0x00,0x46,0x00);     //R70
	senspi(0x00,0x45,0x00);     //R69      //RAMP_CMP1_EN
	senspi(0x00,0x44,0x00);     //R68      //RAMP_CMP1
	senspi(0x00,0x43,0x80);     //R67
	senspi(0x00,0x42,0x00);     //R66
	senspi(0x00,0x41,0x00);     //R65
	senspi(0x00,0x40,0x01);     //R64      //RAMP_CMP0_EN
	senspi(0x00,0x3F,0x00);     //R63      //RAMP_CMP0
	senspi(0x00,0x3E,0xA0);     //R62
	senspi(0x00,0x3D,0x00);     //R61
	senspi(0x00,0x3C,0x00);     //R60
	senspi(0x00,0x3B,0x00);     //R59      //TRIG����
	senspi(0x00,0x3A,0x00);     //R58

	      /*ʹ��б��*/
	senspi(0x00,0x3A,0x01);     //R58
		//����  mcy
	senspi(0x00,0x00,0x00);
//////////////////////////////////////////////////////////////////////////
	senspi_1(0x00,0x18);
	senspi_1(0x00,0x00);

	u32 RAMEP0_INC;
	u32 RAMP0_LEN;
	u32 RAMP_LIMIT_LOW;
	u32 RAMP_LIMIT_HIGH;
	u32 RAMEP1_INC;
	u32 RAMP1_LEN;

	float temp;

	u32 R98_Data;
	u32 R97_Data;
	u32 R96_Data;
	u32 R95_Data;
	u32 R94_Data;
	u32 R93_Data;
//	u32 R92_Data;
	u32 R91_Data;
	u32 R90_Data;
	u32 R89_Data;
	u32 R88_Data;
	u32 R87_Data;
	u32 R86_Data;
//	u32 R85_Data;
//	u32 R84_Data;
//	u32 R83_Data;
	u32 R82_Data;
	u32 R81_Data;
	u32 R80_Data;
	u32 R79_Data;
	u32 R78_Data;
	u32 R77_Data;
	u32 R76_Data;
	u32 R75_Data;
	/////////////////1124 lzm/////////
	//����2
//		u32 R106 ;
	u32 R105 ;
	u32 R104 ;
//		u32 R103 ;
//		u32 R102 ;
//        u32 R101 ;
	//�� ��3 ;
//		u32 R113 ;
	u32 R112 ;
	u32 R111 ;
//		u32 R110 ;
//		u32 R109 ;
//		u32 R108 ;
//		u32 R107 ;
	//�� ��4 ;
//		u32 R120 ;
	u32 R119 ;
	u32 R118 ;
//		u32 R117 ;
//		u32 R116 ;
//		u32 R115 ;
//		u32 R114 ;
	//�� ��5 ;
//		u32 R127 ;
	u32 R126 ;
	u32 R125 ;
//		u32 R124 ;
//		u32 R123 ;
//		u32 R122 ;
//		u32 R121 ;
	//�� ��6 ;
//		u32 R134 ;
	u32 R133 ;
	u32 R132 ;
//		u32 R131 ;
//		u32 R130 ;
//		u32 R129 ;
//		u32 R128 ;
	//�� ��7 ;
//		u32 R141 ;
	u32 R140 ;
	u32 R139 ;
//		u32 R138 ;
//		u32 R137 ;
//		u32 R136 ;
//		u32 R135 ;

	/////////////////////////////////////////////////////////
	RAMP0_LEN = T *1000/25;
	R91_Data = RAMP0_LEN & 0xFF00;
	R90_Data = RAMP0_LEN & 0xFF;
	R91_Data = R91_Data >> 8;

	R91_Data = R91_Data | 0x005B00;
	R90_Data = R90_Data | 0x005A00;

	temp  = BW*16777216.f/(16.f*RAMP0_LEN*40.f);
	RAMEP0_INC = temp;
	R89_Data = RAMEP0_INC & 0xFF000000;
	R89_Data = R89_Data >> 24;
	R88_Data = RAMEP0_INC & 0xFF0000;
	R88_Data = R88_Data >> 16;
	R87_Data = RAMEP0_INC & 0xFF00;
	R87_Data = R87_Data >> 8;
	R86_Data = RAMEP0_INC & 0xFF;

	R89_Data = R89_Data | 0x005900;
	R88_Data = R88_Data | 0x005800;
	R87_Data = R87_Data | 0x005700;
	R86_Data = R86_Data | 0x005600;

//		RAMP1_LEN = (PRT- T) *1000/25;
	RAMP1_LEN =  T *1000/25;
	R98_Data = RAMP1_LEN & 0xFF00;
	R97_Data = RAMP1_LEN & 0xFF;
	R98_Data = R98_Data >> 8;

	R98_Data = R98_Data | 0x006200;
	R97_Data = R97_Data | 0x006100;

	temp  = BW*16777216.f/(16.f*RAMP1_LEN*40.f);
	RAMEP1_INC = temp;
	  if(RAMEP1_INC != 0)
	  {
	    RAMEP1_INC = 1073741824 - RAMEP1_INC;
	  }
	  else
	  {
	    RAMEP1_INC = RAMEP1_INC;
	  }
//		RAMEP1_INC = 1073741824 - RAMEP1_INC;
	R96_Data = RAMEP1_INC & 0xFF000000;
	R96_Data = R96_Data >> 24;
	R95_Data = RAMEP1_INC & 0xFF0000;
	R95_Data = R95_Data >> 16;
	R94_Data = RAMEP1_INC & 0xFF00;
	R94_Data = R94_Data >> 8;
	R93_Data = RAMEP1_INC & 0xFF;

	R96_Data = R96_Data | 0x006000;
	R95_Data = R95_Data | 0x005F00;
	R94_Data = R94_Data | 0x005E00;
	R93_Data = R93_Data | 0x005D00;

////////////////////////////////////////////lzm 1124
	u32 RAMP_LEN,writeData[12];
	RAMP_LEN = (PRT - 2*T)*1000/25;   /*��ramp0/1֮���rampʱ����Ӧ�ĵ��� */
	u32 Number_ramp;
	Number_ramp = RAMP_LEN/65536;
	u8 i;

	u32 baseReg = 104;
	for(i = 0; i< Number_ramp; i++)
	{
		writeData[i<<1] = 0xFF | ((baseReg + 7*i)<<8);
		writeData[(i<<1) + 1] = 0xFF | ((baseReg + 1 + 7*i)<<8);
	}


	if(RAMP_LEN == 0)
	{
		writeData[i<<1] = 0x01 | ((baseReg)<<8);
		writeData[(i<<1) + 1] = 0x00 | ((baseReg + 1)<<8);
	}
	else
	{
		RAMP_LEN = RAMP_LEN - Number_ramp* 65536 -(6-Number_ramp-1);
		writeData[Number_ramp<<1] = RAMP_LEN & 0xFF;
		writeData[(Number_ramp<<1) + 1] = RAMP_LEN & 0xFF00;
		writeData[(Number_ramp<<1) + 1] = writeData[(Number_ramp<<1) + 1] >> 8;
		writeData[Number_ramp<<1] = writeData[Number_ramp<<1] | ((baseReg + 7*Number_ramp)<<8);
		writeData[(Number_ramp<<1) + 1] = writeData[(Number_ramp<<1) + 1] | ((baseReg + 1 + 7*Number_ramp)<<8);
	}

	for(i = Number_ramp+1; i< 6; i++)
	{
		writeData[i<<1] = 0x01 | ((baseReg + 7*i)<<8);
		writeData[(i<<1) + 1] = 0x00 | ((baseReg + 1 + 7*i)<<8);
	}
//////////////////////////////////////////lzm 1124

	float Fpd = 40;
	u64 N;
	float F;
	N = 24000/(16*40);
	F = 24000/(16*Fpd);
	F = F - N;
///////////////////////////////1124 lzm��ʼб����		//////
	u32 R17_Data,R16_Data,R21_Data,R20_Data,R19_Data,FRAC;
	R17_Data = N & 0xFF00;
	R16_Data = N & 0xFF;
	R17_Data = R17_Data >> 8;
	R17_Data = R17_Data | 0x001100;
	R16_Data = R16_Data | 0x001000;


	FRAC = F*16777216;
	R21_Data = FRAC & 0xFF0000;
	R21_Data = R21_Data >> 16;
	R20_Data = FRAC & 0xFF00;
	R20_Data = R20_Data >> 8;
	R19_Data = FRAC & 0xFF;
	R21_Data = R21_Data | 0x001500;
	R20_Data = R20_Data | 0x001400;
	R19_Data = R19_Data | 0x001300;
///////////////////////////////1124 lzm��ʼб����		//////


	RAMP_LIMIT_LOW = F*16777216;
	R78_Data = RAMP_LIMIT_LOW & 0xFF000000;
	R78_Data = R78_Data >> 24;
	R77_Data = RAMP_LIMIT_LOW & 0xFF0000;
	R77_Data = R77_Data >> 16;
	R76_Data = RAMP_LIMIT_LOW & 0xFF00;
	R76_Data = R76_Data >> 8;
	R75_Data = RAMP_LIMIT_LOW & 0xFF;

	R78_Data = R78_Data | 0x004E00;
	R77_Data = R77_Data | 0x004D00;
	R76_Data = R76_Data | 0x004C00;
	R75_Data = R75_Data | 0x004B00;

	temp = F*16777216.f + (BW/(16.f*40.f))*16777216.f;
	//temp = (BW/(16.f*40.f))*16777216.f;
	RAMP_LIMIT_HIGH = temp;
	R82_Data = RAMP_LIMIT_HIGH & 0xFF000000;
	R82_Data = R82_Data >> 24;
	R81_Data = RAMP_LIMIT_HIGH & 0xFF0000;
	R81_Data = R81_Data >> 16;
	R80_Data = RAMP_LIMIT_HIGH & 0xFF00;
	R80_Data = R80_Data >> 8;
	R79_Data = RAMP_LIMIT_HIGH & 0xFF;

	R82_Data = R82_Data | 0x005200;
	R81_Data = R81_Data | 0x005100;
	R80_Data = R80_Data | 0x005000;
	R79_Data = R79_Data | 0x004F00;
	///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

	u16 rh;
	u16 rm;
	u16 rl;

	senspi(0x00,0x3A,0x00);	//R58 //�ر�б��

	//RAMP0����
	senspi(0x00,0x5C,0x25);	//R92

	rh=R91_Data/65536;
	rm=(R91_Data-R91_Data/65536*65536)/256;
	rl=R91_Data%256;
	senspi(rh,rm,rl);		//R91_Data

	rh=R90_Data/65536;
	rm=(R90_Data-R90_Data/65536*65536)/256;
	rl=R90_Data%256;
	senspi(rh,rm,rl);		//R90_Data

	rh=R89_Data/65536;
	rm=(R89_Data-R89_Data/65536*65536)/256;
	rl=R89_Data%256;
	senspi(rh,rm,rl);		//R89_Data

	rh=R88_Data/65536;
	rm=(R88_Data-R88_Data/65536*65536)/256;
	rl=R88_Data%256;
	senspi(rh,rm,rl);		//R88_Data

	rh=R87_Data/65536;
	rm=(R87_Data-R87_Data/65536*65536)/256;
	rl=R87_Data%256;
	senspi(rh,rm,rl);		//R87_Data

	rh=R86_Data/65536;
	rm=(R86_Data-R86_Data/65536*65536)/256;
	rl=R86_Data%256;
	senspi(rh,rm,rl);		//R86_Data

	//RAMP1����
	senspi(0x00,0x63,0x42);	//R99

	rh=R98_Data/65536;
	rm=(R98_Data-R98_Data/65536*65536)/256;
	rl=R98_Data%256;
	senspi(rh,rm,rl);		//R98_Data

	rh=R97_Data/65536;
	rm=(R97_Data-R97_Data/65536*65536)/256;
	rl=R97_Data%256;
	senspi(rh,rm,rl);		//R97_Data

	rh=R96_Data/65536;
	rm=(R96_Data-R96_Data/65536*65536)/256;
	rl=R96_Data%256;
	senspi(rh,rm,rl);		//R96_Data

	rh=R95_Data/65536;
	rm=(R95_Data-R95_Data/65536*65536)/256;
	rl=R95_Data%256;
	senspi(rh,rm,rl);		//R95_Data

	rh=R94_Data/65536;
	rm=(R94_Data-R94_Data/65536*65536)/256;
	rl=R94_Data%256;
	senspi(rh,rm,rl);		//R94_Data

	rh=R93_Data/65536;
	rm=(R93_Data-R93_Data/65536*65536)/256;
	rl=R93_Data%256;
	senspi(rh,rm,rl);		//R93_Data
	/////////////////////////1124 lzm
	//RAMP2����
	R105 = writeData[1];
	R104 = writeData[0];
	senspi(0x00,0x6A,0x60);   //R106

	rh=R105/65536;
	rm=(R105-R105/65536*65536)/256;
	rl=R105%256;
	senspi(rh,rm,rl);   //R105

	rh=R104/65536;
	rm=(R104-R104/65536*65536)/256;
	rl=R104%256;
	senspi(rh,rm,rl);   //R104

	senspi(0x00,0x67,0x00);   //R103
	senspi(0x00,0x66,0x00);   //R102
	senspi(0x00,0x65,0x00);   //R101
	senspi(0x00,0x64,0x00);   //R100
	/////////////////////////1124 lzm
	//RAMP3����
	R112 = writeData[3];
	R111 = writeData[2];
	senspi(0x00,0x71,0x80);  //R113

	rh=R112/65536;
	rm=(R112-R112/65536*65536)/256;
	rl=R112%256;
	senspi(rh,rm,rl);  //R112

	rh=R111/65536;
	rm=(R111-R111/65536*65536)/256;
	rl=R111%256;
	senspi(rh,rm,rl);  //R111

	senspi(0x00,0x6E,0x00);  //R110
	senspi(0x00,0x6D,0x00);  //R109
	senspi(0x00,0x6C,0x00);  //R108
	senspi(0x00,0x6B,0x00);  //R107
	/////////////////////////1124 lzm
	//RAMP4����
	R119 = writeData[5];
	R118 = writeData[4];
	senspi(0x00,0x78,0xA0);//R120

	rh=R119/65536;
	rm=(R119-R119/65536*65536)/256;
	rl=R119%256;
	senspi(rh,rm,rl);      //R119

	rh=R118/65536;
	rm=(R118-R118/65536*65536)/256;
	rl=R118%256;
	senspi(rh,rm,rl);     //R118

	senspi(0x0,0x075,0x00);//R117
	senspi(0x00,0x74,0x00);//R116
	senspi(0x00,0x73,0x00);//R115
	senspi(0x00,0x72,0x00);//R114
	/////////////////////////1124 lzm
	//RAMP5����
	R126 = writeData[7];
	R125 = writeData[6];
	senspi(0x00,0x7F,0xC0);//R127

	rh=R126/65536;
	rm=(R126-R126/65536*65536)/256;
	rl=R126%256;
	senspi(rh,rm,rl);     //R126

	rh=R125/65536;
	rm=(R125-R125/65536*65536)/256;
	rl=R125%256;
	senspi(rh,rm,rl);     //R125

	senspi(0x00,0x7C,0x00); //R124
	senspi(0x00,0x7B,0x00); //R123
	senspi(0x00,0x7A,0x00); //R122
	senspi(0x00,0x79,0x00); //R121
	/////////////////////////1124 lzm
	//RAMP6����
	R133 = writeData[9];
	R132 = writeData[8];
	senspi(0x00,0x86,0xE0);//R134

	rh=R133/65536;
	rm=(R133-R133/65536*65536)/256;
	rl=R133%256;
	senspi(rh,rm,rl);     //R133

	rh=R132/65536;
	rm=(R132-R132/65536*65536)/256;
	rl=R132%256;
	senspi(rh,rm,rl);     //R132

	senspi(0x00,0x83,0x00); //R131
	senspi(0x00,0x82,0x00); //R130
	senspi(0x00,0x81,0x00); //R129
	senspi(0x00,0x80,0x00); //R128
	/////////////////////////1124 lzm
	//RAMP7����
	R140 = writeData[11];
	R139 = writeData[10];
	senspi(0x00,0x8D,0x00);//R141

	rh=R140/65536;
	rm=(R140-R140/65536*65536)/256;
	rl=R140%256;
	senspi(rh,rm,rl);     //R140

	rh=R139/65536;
	rm=(R139-R139/65536*65536)/256;
	rl=R139%256;
	senspi(rh,rm,rl);     //R139

	senspi(0x00,0x8A,0x00); //R138
	senspi(0x00,0x89,0x00); //R137
	senspi(0x00,0x88,0x00); //R136
	senspi(0x00,0x87,0x00); //R135
	////////////////////////1124 lzm

	//��ʼб������
	senspi(0x00,0x18,0xFF);	//R24
	senspi(0x00,0x17,0xFF);	//R23
	senspi(0x00,0x16,0xFF);	//R22
	rh=R21_Data/65536;
	rm=(R21_Data-R21_Data/65536*65536)/256;
	rl=R21_Data%256;
	senspi(rh,rm,rl);     //R21_Data

	rh=R20_Data/65536;
	rm=(R20_Data-R20_Data/65536*65536)/256;
	rl=R20_Data%256;
	senspi(rh,rm,rl);     //R20_Data

	rh=R19_Data/65536;
	rm=(R19_Data-R19_Data/65536*65536)/256;
	rl=R19_Data%256;
	senspi(rh,rm,rl);     //R19_Data

	//senspi(0x00,0x15,0x80);	//R21
	//senspi(0x00,0x14,0x00);	//R20
	//senspi(0x00,0x13,0x00);	//R19

	senspi(0x00,0x12,0x2C);	//R18

	rh=R17_Data/65536;
	rm=(R17_Data-R17_Data/65536*65536)/256;
	rl=R17_Data%256;
	senspi(rh,rm,rl);     //R17_Data

	rh=R16_Data/65536;
	rm=(R16_Data-R16_Data/65536*65536)/256;
	rl=R16_Data%256;
	senspi(rh,rm,rl);     //R16_Data

	//senspi(0x00,0x11,0x00);	//R17
	//senspi(0x00,0x10,0x25);	//R16

							//б���������
	rh=R82_Data/65536;
	rm=(R82_Data-R82_Data/65536*65536)/256;
	rl=R82_Data%256;
	senspi(rh,rm,rl);		//R82_Data

	rh=R81_Data/65536;
	rm=(R81_Data-R81_Data/65536*65536)/256;
	rl=R81_Data%256;
	senspi(rh,rm,rl);		//R81_Data

	rh=R80_Data/65536;
	rm=(R80_Data-R80_Data/65536*65536)/256;
	rl=R80_Data%256;
	senspi(rh,rm,rl);		//R80_Data

	rh=R79_Data/65536;
	rm=(R79_Data-R79_Data/65536*65536)/256;
	rl=R79_Data%256;
	senspi(rh,rm,rl);		//R79_Data

	rh=R78_Data/65536;
	rm=(R78_Data-R78_Data/65536*65536)/256;
	rl=R78_Data%256;
	senspi(rh,rm,rl);		//R78_Data

	rh=R77_Data/65536;
	rm=(R77_Data-R77_Data/65536*65536)/256;
	rl=R77_Data%256;
	senspi(rh,rm,rl);		//R77_Data

	rh=R76_Data/65536;
	rm=(R76_Data-R76_Data/65536*65536)/256;
	rl=R76_Data%256;
	senspi(rh,rm,rl);		//R76_Data

	rh=R75_Data/65536;
	rm=(R75_Data-R75_Data/65536*65536)/256;
	rl=R75_Data%256;
	senspi(rh,rm,rl);		//R75_Data

	senspi(0x00,0x3A,0x01);	//R58 //ʹ��б��

	senspi(0x00,0x00,0x00);
}
/***********************************that's all about SPI*************************/

XGpioPs GpioPs_Init()
{
	XGpioPs_Config* GpioConfigPtr;
	XGpioPs psGpioInstancePtr;

	GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	XGpioPs_CfgInitialize(&psGpioInstancePtr, GpioConfigPtr, GpioConfigPtr->BaseAddr);

	return psGpioInstancePtr;
}

void print_ip(char *msg, struct ip_addr *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}