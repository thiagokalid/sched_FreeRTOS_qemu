################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/Source/portable/GCC/ARM_CM3/port.c 

OBJS += \
./FreeRTOS/Source/portable/GCC/ARM_CM3/port.o 

C_DEPS += \
./FreeRTOS/Source/portable/GCC/ARM_CM3/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/Source/portable/GCC/ARM_CM3/%.o: ../FreeRTOS/Source/portable/GCC/ARM_CM3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F407xx -DUSE_HAL_DRIVER -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\Libraries\CMSIS\Core\Include" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\Libraries\CMSIS\Device\ST\STM32F4xx\Include" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\Libraries\STM32F4xx_HAL_Driver\Inc" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\FreeRTOS\Source\include" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\FreeRTOS\Source\portable\GCC\ARM_CM3" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\ESFree" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\system\inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


