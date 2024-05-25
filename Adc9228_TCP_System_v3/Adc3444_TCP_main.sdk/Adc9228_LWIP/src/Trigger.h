/*
 * Trigger.h
 *
 *  Created on: 2021Äê12ÔÂ1ÈÕ
 *      Author: F520
 */

#include "stdint.h"

#define _TrigGenAMPHIGHThreshold 0x00
#define _TrigGenAMPLOWHThreshold 0x01
#define _TrigGenAMPLOWLThreshold 0x02
#define _TrigGenPulseThreshold   0x03
#define _TrigGenDemodThreshold   0x04
#define _TrigGenSFTimeout        0x05
#define _TrigGenUpdate           0x06
#define _TrigGenFcode0_7         0x07
#define _TrigGenMFADDR0_1        0x08
#define _TrigGenMFADDR2_3        0x09
#define _TrigGenMFADDR4_5        0x0A
#define _TrigGenMFADDR6_7        0x0B
#define _TrigGenLOGTime          0x0C

#define _TrigMuxEnableMask       0x10
#define _TrigMuxAndMask          0x11
#define _TrigMuxOrMask           0x12
#define _TrigMuxSel              0x13
#define _TrigMuxUpdate           0x14

#define _TrigDMAStart            0x20
#define _TrigDMAPosition         0x21
#define _TrigDMALength           0x22
#define _TrigDMAStartAddr        0x23
#define _TrigDMADDRSpace         0x24
#define _TrigDMAUpdate           0x25

#define _TrigStatus              0x26
#define _TrigToggle              0x27
#define _TrigVector              0x28
#define _TrigVectorPending       0x29

#define _TrigReset               0x30

#define TrigEXT             (0x00000001 << 0x0)
#define TrigAMPHIGH         (0x00000001 << 0x1)
#define TrigAMPLOW          (0x00000001 << 0x2)
#define TrigSINGLEPULSE     (0x00000001 << 0x3)
#define TrigDEMODEMF        (0x00000001 << 0x4)
#define TrigDEMODESF        (0x00000001 << 0x5)
#define TrigDEMODEMFCODE    (0x00000001 << 0x6)
#define TrigDEMODEMFADDR    (0x00000001 << 0x7)
#define TrigDEMODEFRMERR    (0x00000001 << 0x8)
#define TrigDEMODECRCSTDERR (0x00000001 << 0x9)
#define TrigDEMODECRCCOMERR (0x00000001 << 0xA)
#define TrigDEMODEMISSSF    (0x00000001 << 0xB)
#define Trig10MINLOG        (0x00000001 << 0xC)

#define TrigVectorNum                      0x0D

#define TriggerCh0Base XPAR_TRIGGERCH_0_BASEADDR
#define TriggerCh1Base XPAR_TRIGGERCH_1_BASEADDR
#define TriggerCh2Base XPAR_TRIGGERCH_2_BASEADDR
#define TriggerCh3Base XPAR_TRIGGERCH_3_BASEADDR

#define TriggerDDRSpace 24 //2^10 -1
#define TriggerDDRSpaceSize (1 << TriggerDDRSpace)
#define TriggerDDRSpaceMask ((1 << TriggerDDRSpace) - 1)

struct TriggerChGen{
	int32_t TrigGenAMPHIGHThreshold;
	int32_t TrigGenAMPLOWHThreshold;
	int32_t TrigGenAMPLOWLThreshold;
	int32_t TrigGenPulseThreshold  ;
	int32_t TrigGenDemodThreshold  ;
	uint32_t TrigGenFcode0_7        ;
	uint32_t TrigGenMFADDR0_1          ;
	uint32_t TrigGenMFADDR2_3          ;
	uint32_t TrigGenMFADDR4_5          ;
	uint32_t TrigGenMFADDR6_7          ;
	uint32_t TrigGenSFTimeout       ;
	uint32_t TrigGenLOGTime;
};

struct TriggerChMux{
	uint32_t TrigMuxEnableMask      ;
	uint32_t TrigMuxEnableMaskT     ;
	uint32_t TrigMuxEnableCompT     ;

	uint32_t TrigMuxAndMask         ;
	uint32_t TrigMuxOrMask          ;
	uint32_t TrigMuxSel             ;
};

struct TriggerChDMA{
	uint32_t TrigDMAPosition        ;
	uint32_t TrigDMALength          ;
	uint8_t *TrigDMAStartAddr       ;
};

struct TriggerInst{
	struct TriggerChGen TriggerChGenParam;
	struct TriggerChMux TriggerChMuxParam;
	struct TriggerChDMA TriggerChDMAParam;

	uint32_t TriggerToggle;
	uint32_t TriggerVector;
	uint32_t TriggerVectorPending;
	uint32_t TriggerVectorCode;
	uint8_t *TriggerRingEnd;
	uint8_t *TriggerRingStart;

	uint32_t TriggerBase;
	uint32_t TriggerCRCERR;

	uint32_t TriggerID;

	volatile uint32_t TriggerHandlerInt;

};

char TrigCode[TrigVectorNum][32];

void TriggerChUpdate(uint32_t base_addr, struct TriggerChGen TriggerGen, struct TriggerChMux TriggerMux,struct TriggerChDMA TriggerDMA);

void TrigWriteReg(uint32_t base_addr, uint32_t regaddr, uint32_t regvalue);
uint32_t TrigReadReg(uint32_t base_addr, uint32_t regaddr);

void TrigSetGenAMPHIGHThreshold(uint32_t base_addr, uint32_t AMPHIGHThreshold);
void TrigSetGenAMPLOWHThreshold(uint32_t base_addr, uint32_t AMPLOWHThreshold);
void TrigSetGenAMPLOWLThreshold(uint32_t base_addr, uint32_t AMPLOWLThreshold);
void TrigSetGenPulseThreshold(uint32_t base_addr, uint32_t PulseThreshold);
void TrigSetGenDemodThreshold(uint32_t base_addr, uint32_t DemodThreshold);

void TrigSetGenFcode0_7(uint32_t base_addr, uint32_t Fcode);
void TrigSetGenMFADDR0_1(uint32_t base_addr, uint32_t MFADDR);
void TrigSetGenMFADDR2_3(uint32_t base_addr, uint32_t MFADDR);
void TrigSetGenMFADDR4_5(uint32_t base_addr, uint32_t MFADDR);
void TrigSetGenMFADDR6_7(uint32_t base_addr, uint32_t MFADDR);

void TrigSetGenSFTimeout(uint32_t base_addr, uint32_t SFTimeout);
void TrigSetGenLOGTime(uint32_t base_addr, uint32_t LOGTime);
void TrigSetGenUpdate(uint32_t base_addr);

void TrigSetMuxEnableMask(uint32_t base_addr, uint32_t EnableMask);
void TrigSetMuxAndMask(uint32_t base_addr, uint32_t AndMask);
void TrigSetMuxOrMask(uint32_t base_addr, uint32_t OrMask);
void TrigSetMuxSel(uint32_t base_addr, uint32_t Sel);
void TrigSetMuxUpdate(uint32_t base_addr);

void TrigSetDMAStart(uint32_t base_addr, uint32_t Start);
void TrigSetDMAPosition(uint32_t base_addr, uint32_t Position);
void TrigSetDMALength(uint32_t base_addr, uint32_t Length);
void TrigSetDMAStartAddr(uint32_t base_addr, uint32_t StartAddr);
void TrigSetDMAUpdate(uint32_t base_addr);

uint32_t TrigGetStatus(uint32_t base_addr);
uint32_t TrigGetToggle(uint32_t base_addr);
uint32_t TrigGetVector(uint32_t base_addr);
uint32_t TrigGetVectorPending(uint32_t base_addr);

void TrigReset(uint32_t base_addr);

void TriggerChOnce(struct TriggerInst* TriggerInstPtr);
uint32_t TriggerInstInit(struct TriggerInst* TriggerInstPtr);

//y = 547.52x - 148.26
//R2 = 0.9995
#define adcf2i(i) (int32_t)(547.52*i - 148.26)
#define i2adcf(f) (float)((f+148.26)/547.52)
