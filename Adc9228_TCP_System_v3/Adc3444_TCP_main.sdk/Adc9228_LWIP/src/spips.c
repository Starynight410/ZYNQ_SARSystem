#include "spips.h"


int SpiPs_Init(u16 SpiDeviceId)
{
	int Status;
	u8 *BufferPtr;
	XSpiPs_Config *SpiConfig;	//�豸Id����ַ��ʱ��

	/*
	 * Initialize the SPI driver so that it's ready to use
	 */
	SpiConfig = XSpiPs_LookupConfig(SpiDeviceId);	//�����豸����ַ��0xE0006000��ʱ�ӣ�166666672
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}

	Status = XSpiPs_CfgInitialize((&SpiInstance), SpiConfig,	//��ʼ������
					SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * The SPI device is a slave by default and the clock phase
	 * have to be set according to its master. In this example, CPOL is set
	 * to quiescent high and CPHA is set to 1.
	 */
	Status = XSpiPs_SetOptions((&SpiInstance),  XSPIPS_MASTER_OPTION);	//XSPIPS_MASTER_OPTION=1
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XSpiPs_SetClkPrescaler(&SpiInstance, XSPIPS_CLK_PRESCALE_64);	//0x05U  64��Ƶ
	//��������Ĺؼ��������÷�Ƶϵ������Ƶϵ��һ������������ȷ��

	/*
	 * Enable the device.
	 */
	XSpiPs_Enable((&SpiInstance));	//0xE0006014=1  enable the SPI

	return XST_SUCCESS;
}


void SpiPs_Read(u8 *ReadBuffer,int ByteCount)
{
	int Count;
	u32 StatusReg;


	do{
		StatusReg = XSpiPs_ReadReg(SpiInstance.Config.BaseAddress,
					XSPIPS_SR_OFFSET);
	}while(!(StatusReg & XSPIPS_IXR_RXNEMPTY_MASK));

	/*
	 * Reading the Rx Buffer
	 */
	for(Count = 0; Count < ByteCount; Count++){
		ReadBuffer[Count] = SpiPs_RecvByte(
				SpiInstance.Config.BaseAddress);
	}

}


void SpiPs_Send(u8 *SendBuffer, int ByteCount)
{
	u32 StatusReg;
	int TransCount = 0;

	/*
	 * Fill the TXFIFO with as many bytes as it will take (or as
	 * many as we have to send).
	 */
	while ((ByteCount > 0) &&
		(TransCount < XSPIPS_FIFO_DEPTH)) {	 //XSPIPS_FIFO_DEPTH=128
		SpiPs_SendByte(SpiInstance.Config.BaseAddress,
				*SendBuffer);
		//0x1CU  /**< Data Transmit Register */
		SendBuffer++;
		++TransCount;
		ByteCount--;
	}

	/*
	 * Wait for the transfer to finish by polling Tx fifo status.
	 */
	do {
		StatusReg = XSpiPs_ReadReg(
				SpiInstance.Config.BaseAddress,
					XSPIPS_SR_OFFSET);
	} while ((StatusReg & XSPIPS_IXR_TXOW_MASK) == 0);

}
