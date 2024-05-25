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

#include "echo.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

#define TCP_TEST  		0x00
#define TCP_CAM_STOP  	0x01
#define TCP_CAM_START  	0x02
#define TCP_CAM_DATA	0x03

const u8 TCP_SUCCESS	= 0x00;
const u8 TCP_FAILED		= 0x01;
const u8 TCP_UNKNOWN	= 0x03;

extern uint8_t data_buffer[2048*8] __attribute__ ((__aligned__(32)));
extern uint8_t * data_bufferPtr;

u16 snd_buf;			// send buf size

int transfer_data() {
	return 0;
}

void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
	xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err){
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	/* disable nagle algorithm */
	tcp_nagle_disable(tpcb);

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

	/* echo back the payload */
//	if(tcp_sndbuf(tpcb) <= p->len){
//		xil_printf("no space in tcp_sndbuf\n\r");
//		pbuf_free(p);
//		return ERR_OK;
//	}

	/* in this case, we assume that the payload is < TCP_SND_BUF */
#ifdef __DEBUG__
	xil_printf("start  ");
#endif

	u8 code = ((u8*)(p->payload))[0];	// req code
	snd_buf = tcp_sndbuf(tpcb);

	switch(code)
	{
		case TCP_TEST:	// TCP_TEST
	#ifdef __DEBUG__
		xil_printf("-- Test request. payload:%s\n",p->payload);
	#endif
			err = tcp_write(tpcb, (void*)(&TCP_SUCCESS), 1, 1);
			break;

		case TCP_CAM_STOP:	// TCP_STOP
	#ifdef __DEBUG__
			xil_printf("-- Camera stop. payload:%s\n",p->payload);
	#endif
			err = tcp_write(tpcb, (void*)(&TCP_SUCCESS), 1, 1);
			break;

		case TCP_CAM_START:	// TCP_START
	#ifdef __DEBUG__
			xil_printf("-- Camera start. payload:%s\n",p->payload);
	#endif
			err = tcp_write(tpcb, (void*)(&TCP_SUCCESS), 1, 1);
			break;

		case TCP_CAM_DATA:
	#ifdef __DEBUG__
			xil_printf("--payload:%s\n",p->payload);
			xil_printf("    sndbuf:%d\n",snd_buf);
	#endif
			err = tcp_write(tpcb, data_bufferPtr, 1024, 0);
			tcp_output(tpcb);
			break;
		default:
	#ifdef __DEBUG__
			xil_printf("-- Unknown code. payload:%s\n", p->payload);
	#endif
			err = tcp_write(tpcb, (void*)(&TCP_UNKNOWN), 1, 1);
			break;
	}
#ifdef __DEBUG__
	xil_printf("finish.  snd_buf:%d  pkg_size:%d\n",snd_buf,pkg_size);
#endif

	/* free the received pbuf */
	pbuf_free(p);
	return ERR_OK;
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	static int connection = 1;

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);

	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(newpcb, (void*)(UINTPTR)connection);

	/* increment for subsequent accepted connections */
	connection++;

	return ERR_OK;
}


int start_application()
{
	struct tcp_pcb *pcb;
	err_t err;
	unsigned port = 7;

	/* create new TCP PCB structure */
	pcb = tcp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb, IP_ADDR_ANY, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb, NULL);

	/* listen for connections */
	pcb = tcp_listen(pcb);
	if (!pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb, accept_callback);

	xil_printf("TCP echo server started @ port %d\n\r", port);

	return 0;
}