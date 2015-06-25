/*
 * main.c
 *
 *  Created on: Jun 24, 2015
 *      Author: titan
 */
/*- Includes ---------------------------------------------------------------*/
#include <stdbool.h>
#include <avr/boot.h>
#include <util/delay.h>

#include "config.h"
#include "hal.h"
#include "phy.h"
#include "sys.h"
#include "nwk.h"
#include "halUart.h"
#include "halLed.h"
#include "sysTimer.h"


uint8_t frame[5];

NWK_DataReq_t nwkDataReq;
typedef bool (*appDataInd_ptr_t)(NWK_DataInd_t *ind);
static bool appDataInd(NWK_DataInd_t *ind);
void startTimeoutTimer();
SYS_Timer_t timeoutTimer;


static void appDataConf(NWK_DataReq_t *req)
{

}

void HAL_UartBytesReceived(uint16_t bytes)
{

}

void timeoutTimerHandler(SYS_Timer_t *timer)
{
	if (!NWK_Busy())
		{
			frame[0] = 0x06;
			frame[1] = 0xBB;
			frame[2] = 0xBB;
			frame[3] = 0xBB;
			frame[4] = 0xBB;

			nwkDataReq.dstAddr = 0x389C;
			nwkDataReq.dstEndpoint = 1;
			nwkDataReq.srcEndpoint = 1;
			nwkDataReq.size = sizeof(frame);
			nwkDataReq.data = frame;
			nwkDataReq.confirm = appDataConf;

			NWK_DataReq(&nwkDataReq);
		}
	startTimeoutTimer();
}

void startTimeoutTimer()
{
	timeoutTimer.interval = 250;
	timeoutTimer.mode = SYS_TIMER_INTERVAL_MODE;
	timeoutTimer.handler = timeoutTimerHandler;
	SYS_TimerStart(&timeoutTimer);
}

static void APP_TaskHandler(void)
{

}
static bool appDataInd(NWK_DataInd_t *ind)
{
	return true;
}
void init_nwk()
{
	NWK_SetAddr(0x0000);
	NWK_SetPanId(0x1973);
	PHY_SetChannel(0x16);
	PHY_SetTxPower(0);
	PHY_SetRxState(true);
	NWK_OpenEndpoint(1, appDataInd);
}

int main(void)
{
	SYS_Init();
	HAL_UartInit(38400);
	HAL_LedInit();
	HAL_LedOff(0);

	init_nwk();
	startTimeoutTimer();
	while (1)
	{
		SYS_TaskHandler();
		HAL_UartTaskHandler();
		APP_TaskHandler();
	}
}
