/*
 * Trigger.c
 *
 *  Created on: 2021Äê12ÔÂ1ÈÕ
 *      Author: F520
 */

#include <stdio.h>
#include "Trigger.h"

char TrigCode[TrigVectorNum][32] = {
"EX",
"AH",
"AL",
"SP",

"MF",
"SF",
"MC",
"MA",

"FR",
"SR",
"CR",
"IF",

"LG"};

void TrigWriteReg(uint32_t base_addr, uint32_t regaddr, uint32_t regvalue)
{
	*(volatile uint32_t *)(base_addr + (regaddr << 2)) = regvalue;
}
uint32_t TrigReadReg(uint32_t base_addr, uint32_t regaddr)
{
	return *(volatile uint32_t *)(base_addr + (regaddr << 2));
}

void TrigSetGenAMPHIGHThreshold(uint32_t base_addr, uint32_t AMPHIGHThreshold)
{
	TrigWriteReg(base_addr , _TrigGenAMPHIGHThreshold, AMPHIGHThreshold);
}
void TrigSetGenAMPLOWHThreshold(uint32_t base_addr, uint32_t AMPLOWHThreshold)
{
	TrigWriteReg(base_addr , _TrigGenAMPLOWHThreshold, AMPLOWHThreshold);
}
void TrigSetGenAMPLOWLThreshold(uint32_t base_addr, uint32_t AMPLOWLThreshold)
{
	TrigWriteReg(base_addr , _TrigGenAMPLOWLThreshold, AMPLOWLThreshold);
}
void TrigSetGenPulseThreshold(uint32_t base_addr, uint32_t PulseThreshold)
{
	TrigWriteReg(base_addr , _TrigGenPulseThreshold, PulseThreshold);
}
void TrigSetGenDemodThreshold(uint32_t base_addr, uint32_t DemodThreshold)
{
	TrigWriteReg(base_addr , _TrigGenDemodThreshold, DemodThreshold);
}

void TrigSetGenFcode0_7(uint32_t base_addr, uint32_t Fcode)
{
	TrigWriteReg(base_addr , _TrigGenFcode0_7, Fcode);
}
void TrigSetGenMFADDR0_1(uint32_t base_addr, uint32_t MFADDR)
{
	TrigWriteReg(base_addr , _TrigGenMFADDR0_1, MFADDR);
}
void TrigSetGenMFADDR2_3(uint32_t base_addr, uint32_t MFADDR)
{
	TrigWriteReg(base_addr , _TrigGenMFADDR2_3, MFADDR);
}
void TrigSetGenMFADDR4_5(uint32_t base_addr, uint32_t MFADDR)
{
	TrigWriteReg(base_addr , _TrigGenMFADDR4_5, MFADDR);
}
void TrigSetGenMFADDR6_7(uint32_t base_addr, uint32_t MFADDR)
{
	TrigWriteReg(base_addr , _TrigGenMFADDR6_7, MFADDR);
}

void TrigSetGenSFTimeout(uint32_t base_addr, uint32_t SFTimeout)
{
	TrigWriteReg(base_addr , _TrigGenSFTimeout, SFTimeout);
}
void TrigSetGenLOGTime(uint32_t base_addr, uint32_t LOGTime)
{
	TrigWriteReg(base_addr , _TrigGenLOGTime, LOGTime);
}
void TrigSetGenUpdate(uint32_t base_addr)
{
	TrigWriteReg(base_addr , _TrigGenUpdate, 1);
}

void TrigSetMuxEnableMask(uint32_t base_addr, uint32_t EnableMask)
{
	TrigWriteReg(base_addr , _TrigMuxEnableMask, EnableMask);
}
void TrigSetMuxAndMask(uint32_t base_addr, uint32_t AndMask)
{
	TrigWriteReg(base_addr , _TrigMuxAndMask, AndMask);
}
void TrigSetMuxOrMask(uint32_t base_addr, uint32_t OrMask)
{
	TrigWriteReg(base_addr , _TrigMuxOrMask, OrMask);
}
void TrigSetMuxSel(uint32_t base_addr, uint32_t Sel)
{
	TrigWriteReg(base_addr , _TrigMuxSel, Sel);
}
void TrigSetMuxUpdate(uint32_t base_addr)
{
	TrigWriteReg(base_addr , _TrigMuxUpdate, 1);
}

void TrigSetDMAStart(uint32_t base_addr, uint32_t Start)
{
	TrigWriteReg(base_addr , _TrigDMAStart, Start);
}
void TrigSetDMAPosition(uint32_t base_addr, uint32_t Position)
{
	TrigWriteReg(base_addr , _TrigDMAPosition, Position);
}
void TrigSetDMALength(uint32_t base_addr, uint32_t Length)
{
	TrigWriteReg(base_addr , _TrigDMALength, Length);
}
void TrigSetDMAStartAddr(uint32_t base_addr, uint32_t StartAddr)
{
	TrigWriteReg(base_addr , _TrigDMAStartAddr, StartAddr);
}
void TrigSetDMAUpdate(uint32_t base_addr)
{
	TrigWriteReg(base_addr , _TrigDMAUpdate, 1);
}

uint32_t TrigGetStatus(uint32_t base_addr)
{
	return TrigReadReg(base_addr, _TrigStatus);
}
uint32_t TrigGetToggle(uint32_t base_addr)
{
	return TrigReadReg(base_addr, _TrigToggle);
}
uint32_t TrigGetVector(uint32_t base_addr)
{
	return TrigReadReg(base_addr, _TrigVector);
}
uint32_t TrigGetVectorPending(uint32_t base_addr)
{
	return TrigReadReg(base_addr, _TrigVectorPending);
}
void TrigReset(uint32_t base_addr)
{
	TrigWriteReg(base_addr , _TrigReset, 1);
}


void TriggerChOnce(struct TriggerInst* TriggerInstPtr)
{
	TrigSetDMAStart            (TriggerInstPtr->TriggerBase, 1);
	TrigSetDMAUpdate           (TriggerInstPtr->TriggerBase);
}

uint32_t TriggerInstInit(struct TriggerInst* TriggerInstPtr)
{
	TriggerInstPtr->TriggerToggle = 0x00000000;
	TriggerInstPtr->TriggerVector = 0x00000000;
	TriggerInstPtr->TriggerVectorCode = 0x00000000;
	TriggerInstPtr->TriggerRingEnd = 0x00000000;
	TriggerInstPtr->TriggerRingStart = 0x00000000;
	TriggerInstPtr->TriggerCRCERR = 0x00000000;

    TrigSetGenAMPHIGHThreshold (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenAMPHIGHThreshold);
    TrigSetGenAMPLOWHThreshold (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenAMPLOWHThreshold);
    TrigSetGenAMPLOWLThreshold (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenAMPLOWLThreshold);
    TrigSetGenPulseThreshold   (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenPulseThreshold  );
    TrigSetGenDemodThreshold   (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenDemodThreshold  );

    TrigSetGenFcode0_7         (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenFcode0_7           );
    TrigSetGenMFADDR0_1        (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenMFADDR0_1          );
    TrigSetGenMFADDR2_3        (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenMFADDR2_3          );
    TrigSetGenMFADDR4_5        (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenMFADDR4_5          );
    TrigSetGenMFADDR6_7        (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenMFADDR6_7          );
    TrigSetGenLOGTime          (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenLOGTime          );
    TrigSetGenSFTimeout        (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChGenParam.TrigGenSFTimeout       );
    TrigSetGenUpdate           (TriggerInstPtr->TriggerBase);

    TrigSetMuxEnableMask       (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChMuxParam.TrigMuxEnableMask);
    TrigSetMuxAndMask          (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChMuxParam.TrigMuxAndMask   );
    TrigSetMuxOrMask           (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChMuxParam.TrigMuxOrMask    );
    TrigSetMuxSel              (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChMuxParam.TrigMuxSel       );
    TrigSetMuxUpdate           (TriggerInstPtr->TriggerBase);

    TrigSetDMAStart            (TriggerInstPtr->TriggerBase, 0);
    TrigSetDMAPosition         (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChDMAParam.TrigDMAPosition);
    TrigSetDMALength           (TriggerInstPtr->TriggerBase, TriggerInstPtr->TriggerChDMAParam.TrigDMALength  );
    TrigSetDMAStartAddr        (TriggerInstPtr->TriggerBase, (uint32_t)TriggerInstPtr->TriggerChDMAParam.TrigDMAStartAddr);
    TrigSetDMAUpdate           (TriggerInstPtr->TriggerBase);
}
