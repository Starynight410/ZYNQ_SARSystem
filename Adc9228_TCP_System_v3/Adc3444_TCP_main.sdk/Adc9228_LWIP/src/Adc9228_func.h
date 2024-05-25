#ifndef SRC_ADC9228TCP_H_
#define SRC_ADC9228TCP_H_

// command data from PC through TCP/IP
uint8_t rx_buffer[2048*8] __attribute__ ((__aligned__(32)));
uint8_t * rx_bufferPtr;

// data buffer between PC and ZYNQ through port 10 data_connected_pcb
uint8_t data_buffer[2048*8] __attribute__ ((__aligned__(32)));
uint8_t * data_bufferPtr;

// Adc data to PC through TCP/IP
uint8_t tx_buffer[131072] __attribute__ ((__aligned__(32)));
uint8_t * tx_bufferPtr;

// Uart data from PC
uint8_t Uart_tcp_rx_buffer[2048*8] __attribute__ ((__aligned__(32)));
uint8_t * Uart_tcp_rx_bufferPtr;

// Uart data to PC
uint8_t Uart_tcp_tx_buffer[2048*8] __attribute__ ((__aligned__(32)));
uint8_t * Uart_tcp_tx_bufferPtr;

struct tcp_pcb *connected_pcb;			//port 7 send AdcData to Host
struct tcp_pcb *receive_pcb;			//port 8 receive Command from Host
struct tcp_pcb *uart_connected_pcb;		//port 9 receive uart from Host
struct tcp_pcb *data_connected_pcb;		//port 10 receive DataReq from Host

volatile int ReadyToHandle_CommandRx;
volatile int ReadyToHandle_UartRx;
volatile int ReadyToHandle_DataReq;

#endif /* SRC_ADC9228TCP_H_ */
