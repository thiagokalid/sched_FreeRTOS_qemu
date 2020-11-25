/*==================================================================================================

  sched_FreeRTOS_qemu.c

  Used hardware: STM32F4-Discovery evaluation board (QEMU)

  Example of using the FreeRTOS with the ESFree scheduler on the STM32F4-Discovery board.

  ==================================================================================================
*/

#include "stm32f4_discovery.h"
#include "scheduler.h"
#include "diag/Trace.h"


TaskHandle_t xHandle1 = NULL, xHandle2 = NULL, xHandle3 = NULL , xHandle4 = NULL;
uint16_t usPhase_1 = 10, usPhase_2 = 260, usPhase_3 = 135; // Task's phase in ms.
uint16_t usPeriod1 = 10, usPeriod2 = 260, usPeriod3 = 135; // Task's period in ms.



void vBlink(void *pvParam){
  trace_printf("%s ", pcTaskGetName(NULL));
  trace_printf("Tick: %d \n" , xTaskGetTickCount());
  BSP_LED_Toggle((uint32_t) pvParam);
} // vBlink

void vPrioInfo(void *pvParam){
  trace_printf("Priorities:\n%s: %d\n", pcTaskGetName(xHandle1), uxTaskPriorityGet(xHandle1));
  trace_printf("%s: %d\n", pcTaskGetName(xHandle2), uxTaskPriorityGet(xHandle2));
  trace_printf("%s: %d\n\n", pcTaskGetName(xHandle3), uxTaskPriorityGet(xHandle3));
} // vPrioInfo

void main(void){
  __HAL_RCC_GPIOD_CLK_ENABLE();
  BSP_LED_Init(LED3);
  BSP_LED_Init(LED5);
  BSP_LED_Init(LED6);

  vSchedulerInit();

  /*
   * Criação das tarefas periódicas:
   *  */


  vSchedulerPeriodicTaskCreate(
		  vBlink,
		  "Task1",
		  configMINIMAL_STACK_SIZE,
		  (void *)LED3,
		  1,
		  &xHandle1,
		  pdMS_TO_TICKS(usPhase_1),
		  pdMS_TO_TICKS(usPeriod1),
		  pdMS_TO_TICKS(001),
		  pdMS_TO_TICKS(250));

  vSchedulerPeriodicTaskCreate(vBlink,
		  "Task2",
		  configMINIMAL_STACK_SIZE,
		  (void *)LED6,
		  1,
		  &xHandle2,
		  pdMS_TO_TICKS(usPhase_2),
		  pdMS_TO_TICKS(usPeriod2),
		  pdMS_TO_TICKS(001),
		  pdMS_TO_TICKS(250));
  vSchedulerPeriodicTaskCreate(vBlink,
		  "Task3",
		  configMINIMAL_STACK_SIZE,
		  (void *)LED5,
		  1,
		  &xHandle3,
		  pdMS_TO_TICKS(usPhase_3),
		  pdMS_TO_TICKS(usPeriod3),
		  pdMS_TO_TICKS(001),
		  pdMS_TO_TICKS(500));

  /*
   * Criação das tarefas aperiódicas:
   *  */


  vSchedulerStart();
  while(1);
} // main
