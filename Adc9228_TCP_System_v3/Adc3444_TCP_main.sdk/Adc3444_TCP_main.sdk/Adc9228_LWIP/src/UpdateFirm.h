/*
 * UpdateFirm.h
 *
 *  Created on: 2022Äê11ÔÂ3ÈÕ
 *      Author: HeJiacheng
 */

#ifndef SRC_UPDATEFIRM_H_
#define SRC_UPDATEFIRM_H_
uint32_t reverseBits_32(uint32_t n);

uint8_t reverseBits_8(uint8_t n);

uint16_t reverseBits_16(uint16_t nonreversed);

//crc16-ccitt x16+x12+x5+1
uint16_t crc16_ccitt_direct(uint8_t *data, uint32_t length, uint32_t init_value, uint32_t reverse);



#endif /* SRC_UPDATEFIRM_H_ */
