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
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

#include "Adc9228_func.h"

#define DataReq_Size 8704  //8192+512
#define Command_Size 4	//8192+512



int transfer_data() {
	return 0;
}

void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP TCP server ------\n\r");
}


void send_err_callback(void * arg, err_t err)
{
	xil_printf("err = %d", err);
}

void rec_err_callback(void * arg, err_t err)
{
	xil_printf("err = %d", err);
}

void Uart_err_callback(void * arg, err_t err)
{
	xil_printf("err = %d", err);
}

void Data_err_callback(void * arg, err_t err)
{
	xil_printf("err = %d", err);
}


int Recpbuf_cnt = 0;
struct pbuf *Recpbuf_temp;
err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		return ERR_OK;
	}

	uint8_t* payloadPtr;
	payloadPtr  = *&(p->payload);

	uint8_t payload1 = *payloadPtr;
	uint8_t payload2 = *(payloadPtr+1);


	if((payload1 == 0x7f) && (payload2 == 0x7e))
	{
		rx_bufferPtr = rx_buffer;
		pbuf_copy_partial(p, rx_bufferPtr, p->tot_len, 0);
		/* indicate that the packet has been received */
		ReadyToHandle_CommandRx = 1;

		tcp_recved(tpcb, p->len);
		pbuf_free(p);
	}


//	if(Recpbuf_cnt == 0)
//	{
//		Recpbuf_temp = p;
//		Recpbuf_cnt++;
//	}
//	else
//	{
//		pbuf_cat(Recpbuf_temp,p);
//		Recpbuf_cnt++;
//	}
//
//	if(p->flags ==1)
//	{
//		Recpbuf_cnt = 0;
//	}
//
//	if(Recpbuf_temp->tot_len == Command_Size)
//	{
//			rx_bufferPtr = rx_buffer;
//			pbuf_copy_partial(Recpbuf_temp, rx_bufferPtr, Recpbuf_temp->tot_len, 0);
//			ReadyToHandle_CommandRx = 1;
//			tcp_recved(tpcb, Recpbuf_temp->tot_len);
//			pbuf_free(Recpbuf_temp);
//	}
	return ERR_OK;
}

err_t Uart_recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		return ERR_OK;
	}

	uint8_t* payloadPtr;
	payloadPtr  = *&(p->payload);

	uint8_t payload1 = *payloadPtr;
	uint8_t payload2 = *(payloadPtr+1);

	if((payload1 == 0xeb) && (payload2 == 0x90))
	{
		Uart_tcp_rx_bufferPtr = Uart_tcp_rx_buffer;
		pbuf_copy_partial(p, Uart_tcp_rx_bufferPtr, p->tot_len, 0);
		/* indicate that the packet has been received */
		ReadyToHandle_UartRx = 1;
		tcp_recved(tpcb, p->len);
		pbuf_free(p);
	}

	return ERR_OK;
}


int pbuf_cnt = 0;
struct pbuf *pbuf_temp;
err_t Data_recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		return ERR_OK;
	}

//	uint8_t* payloadPtr;
//	payloadPtr  = *&(p->payload);
//
//	uint8_t payload1 = *payloadPtr;
//	uint8_t payload2 = *(payloadPtr+1);
//
//
//	if((payload1 == 0x7f) && (payload2 == 0x8e))
//	{
//		data_bufferPtr = data_buffer;
//		pbuf_copy_partial(p, data_bufferPtr, p->tot_len, 0);
//		/* indicate that the packet has been received */
//		ReadyToHandle_DataReq = 1;
//		tcp_recved(tpcb, p->len);
//		pbuf_free(p);
//	}

	if(pbuf_cnt == 0)
	{
		pbuf_temp = p;
		pbuf_cnt++;
	}
	else
	{
		pbuf_cat(pbuf_temp,p);
		pbuf_cnt++;
	}

	if(p->flags ==1)
	{
		pbuf_cnt = 0;
	}

	if(pbuf_temp->tot_len == DataReq_Size)
	{
		data_bufferPtr = data_buffer;
		pbuf_copy_partial(pbuf_temp, data_bufferPtr, pbuf_temp->tot_len, 0);
		ReadyToHandle_DataReq = 1;
		tcp_recved(tpcb, pbuf_temp->tot_len);
		pbuf_free(pbuf_temp);
	}

	return ERR_OK;
}

err_t send_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	xil_printf("Send_Data Connection Accepted\r\n");
    connected_pcb = newpcb;
    tcp_nagle_disable(connected_pcb);
//	tcp_recved(newpcb, 65535);

    if(!tcp_nagle_disabled(connected_pcb))
    {
    	xil_printf("connected_pcb nagle disable failed!\r\n");
    }

    tcp_err(newpcb, send_err_callback);
	return ERR_OK;
}

err_t rec_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	xil_printf("Command Connection Accepted\r\n");
	receive_pcb = newpcb;
    tcp_nagle_disable(receive_pcb);

    if(!tcp_nagle_disabled(receive_pcb))
    {
    	xil_printf("receive_pcb nagle disable failed!\r\n");
    }

	/* set the receive callback for this connection */
    tcp_recv(newpcb, recv_callback);
    tcp_err(newpcb, rec_err_callback);
	return ERR_OK;
}

err_t uart_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	xil_printf("Uart Connection Accepted\r\n");
	uart_connected_pcb = newpcb;
    tcp_nagle_disable(uart_connected_pcb);

    if(!tcp_nagle_disabled(uart_connected_pcb))
    {
    	xil_printf("uart_connected_pcb nagle disable failed!\r\n");
    }

    tcp_recv(newpcb, Uart_recv_callback);
    tcp_err(newpcb, Uart_err_callback);
	return ERR_OK;
}

err_t data_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	xil_printf("Data Connection Accepted\r\n");
	data_connected_pcb = newpcb;
    tcp_nagle_disable(data_connected_pcb);

    if(!tcp_nagle_disabled(data_connected_pcb))
    {
    	xil_printf("Data_connected_pcb nagle disable failed!\r\n");
    }

    tcp_recv(newpcb, Data_recv_callback);
    tcp_err(newpcb, Data_err_callback);
	return ERR_OK;
}

int start_Adc9228TcpApp()
{
	struct tcp_pcb *send_pcb;
	struct tcp_pcb *rec_pcb;
	struct tcp_pcb *uart_pcb;
	struct tcp_pcb *data_pcb;

	err_t send_err,rec_err,uart_err,data_err;

	unsigned send_port = 7;
	unsigned rec_port = 8;
	unsigned uart_port = 9;
	unsigned data_port = 10;

	/* create new TCP PCB structure */
	// send Adc data to PC
	send_pcb = tcp_new();
	if (!send_pcb) {
		xil_printf("Error creating send_pcb. Out of Memory\n\r");
		return -1;
	}

	// receive command data from PC
	rec_pcb = tcp_new();
	if (!rec_pcb) {
		xil_printf("Error creating rec_pcb. Out of Memory\n\r");
		return -1;
	}

	// uart data with PC
	uart_pcb = tcp_new();
	if(!uart_pcb) {
		xil_printf("Error creating uart_pcb. Out of Memory\n\r");
		return -1;
	}

	data_pcb = tcp_new();
	if(!data_pcb) {
		xil_printf("Error creating data_pcb. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	send_err = tcp_bind(send_pcb, IP_ADDR_ANY, send_port);
	if (send_err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", send_port, send_err);
		return -2;
	}

	rec_err = tcp_bind(rec_pcb, IP_ADDR_ANY, rec_port);
	if (rec_err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", rec_port, rec_err);
		return -2;
	}

	uart_err = tcp_bind(uart_pcb, IP_ADDR_ANY, uart_port);
	if (uart_err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", uart_port, uart_err);
		return -2;
	}

	data_err = tcp_bind(data_pcb, IP_ADDR_ANY, data_port);
	if (data_err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", data_err, data_err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	// set argument send to callback function
	tcp_arg(send_pcb, NULL);
	tcp_arg(rec_pcb, NULL);
	tcp_arg(uart_pcb, NULL);
	tcp_arg(data_pcb, NULL);

	/* listen for connections */
	send_pcb = tcp_listen(send_pcb);
	if (!send_pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	rec_pcb = tcp_listen(rec_pcb);
	if (!rec_pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	uart_pcb = tcp_listen(uart_pcb);
	if (!uart_pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	data_pcb = tcp_listen(data_pcb);
	if (!data_pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}
	/* specify callback to use for incoming connections */
	tcp_accept(send_pcb, send_accept_callback);
	xil_printf("send_pcb started @ port %d\n\r", send_port);	// send Adc data to PC
	tcp_accept(rec_pcb, rec_accept_callback);
	xil_printf("rec_pcb started @ port %d\n\r", rec_port);		// receive command data from PC
	tcp_accept(uart_pcb, uart_accept_callback);
	xil_printf("uart_pcb started @ port %d\n\r", uart_port);	// uart data with PC
	tcp_accept(data_pcb, data_accept_callback);
	xil_printf("data_pcb started @ port %d\n\r", data_port);

	return 0;
}


