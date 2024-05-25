/*
 * echo.h
 *
 *  Created on: 2023Äê9ÔÂ15ÈÕ
 *      Author: Yuxuan
 */

#ifndef SRC_ECHO_H_
#define SRC_ECHO_H_

// command data from PC through TCP/IP
uint8_t rx_buffer[2048*8] __attribute__ ((__aligned__(32)));
uint8_t * rx_bufferPtr;

uint8_t data_buffer[2048*8] __attribute__ ((__aligned__(32)));
uint8_t * data_bufferPtr;

struct tcp_pcb *pcb;		//port 7 receive DataReq from Host

volatile int ReadyToHandle_CommandRx;

#endif /* SRC_ECHO_H_ */
