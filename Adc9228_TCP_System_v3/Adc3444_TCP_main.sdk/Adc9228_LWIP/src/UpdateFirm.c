/*
 * UpdateFirm.c
 *
 *  Created on: 2022Äê11ÔÂ3ÈÕ
 *      Author: HeJiacheng
 */

#include "xparameters.h"	/* SDK generated parameters */
#include "xqspips.h"		/* QSPI device driver */
#include "xil_printf.h"
#include "xil_cache.h"
#include "UpDateFirm.h"
uint32_t reverseBits_32(uint32_t n)
{
	n = (n >> 16) | (n << 16);
	n = ((n & 0xff00ff00) >> 8) | ((n & 0x00ff00ff) << 8);
	n = ((n & 0xf0f0f0f0) >> 4) | ((n & 0x0f0f0f0f) << 4);
	n = ((n & 0xcccccccc) >> 2) | ((n & 0x33333333) << 2);
	n = ((n & 0xaaaaaaaa) >> 1) | ((n & 0x55555555) << 1);
	return n;
}
uint8_t reverseBits_8(uint8_t n)
{
	n = (n >> 4) | (n << 4);
	n = ((n & 0xcc) >> 2) | ((n & 0x33) << 2);
	n = ((n & 0xaa) >> 1) | ((n & 0x55) << 1);
	return n;
}
uint16_t reverseBits_16(uint16_t nonreversed)
{
    uint16_t reversed = 0;

    for ( uint16_t i = 0; i < 16; i++ )
    {
        reversed |= ( nonreversed >> ( 16 - i - 1 ) & 1 ) << i;
    }
    return reversed;
}
//crc16-ccitt x16+x12+x5+1
uint16_t crc16_ccitt_direct(uint8_t *data, uint32_t length, uint32_t init_value, uint32_t reverse)
{
	uint32_t i, j;
	uint32_t crc_reg = init_value;
	uint16_t crc_gx = 0x1021;
	uint16_t crc_num = 16;
	uint32_t crc_bit16, crc_in;
	uint32_t crc_byte;
	for (j = 0; j<length; j++, data++)
	{
		if (reverse)
		{
			crc_byte = reverseBits_8(*data);
		}
        else
        {
        	crc_byte = *data;
        }


		for (i = 0; i<8; i++)
		{
			crc_bit16 = (crc_reg & (0x0001 << (crc_num -1 ))) >> (crc_num -1 );
            crc_in = ((crc_byte & (0x01 << (7-i))) >> (7-i));
			switch(crc_bit16 + crc_in)
			{
				case 0x00000000:
				case 0x00000002:
					crc_reg = (crc_reg << 1) ;
					break;
				case 0x00000001:
					crc_reg = (crc_reg << 1);
					crc_reg = crc_reg ^ crc_gx;
					break;
				default:
					break;
			}
		}
	}
	return (uint16_t)(~reverseBits_16(crc_reg) & 0x0000ffff);
}
