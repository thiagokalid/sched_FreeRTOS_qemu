################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sched_FreeRTOS_qemu.c \
../stm32f4_discovery.c \
../system_stm32f4xx.c 

S_UPPER_SRCS += \
../startup_stm32f407xx.S 

OBJS += \
./sched_FreeRTOS_qemu.o \
./startup_stm32f407xx.o \
./stm32f4_discovery.o \
./system_stm32f4xx.o 

S_UPPER_DEPS += \
./startup_stm32f407xx.d 

C_DEPS += \
./sched_FreeRTOS_qemu.d \
./stm32f4_discovery.d \
./system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F407xx -DUSE_HAL_DRIVER -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\Libraries\CMSIS\Core\Include" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\Libraries\CMSIS\Device\ST\STM32F4xx\Include" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\Libraries\STM32F4xx_HAL_Driver\Inc" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\FreeRTOS\Source\include" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\FreeRTOS\Source\portable\GCC\ARM_CM3" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\ESFree" -I"D:\Desktop\Sistemas_Embarcados\Escalonamento_aula_6\sched_FreeRTOS_qemu\system\inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


