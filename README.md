# STM32F4xx Bare-Metal GPIO Driver

A custom GPIO peripheral driver for the STM32F407 written entirely in C,  
without any HAL or middleware. Every hardware register is configured directly  
by reading the STM32F407 Reference Manual (RM0090).

## What this driver does

- Full GPIO pin initialisation (mode, speed, pull-up/down, output type, alternate function)
- Peripheral clock control via RCC AHB1ENR
- GPIO reset via RCC AHB1RSTR
- Read / write individual pins and full 16-bit ports
- Pin toggle
- External interrupt (EXTI) configuration — falling, rising, and both edges
- SYSCFG EXTICR port-to-line mapping
- NVIC interrupt enable/disable and priority configuration

## Registers configured manually

| Register | Purpose |
|---|---|
| RCC->AHB1ENR | GPIO peripheral clock enable |
| GPIOx->MODER | Pin direction (input / output / AF / analog) |
| GPIOx->OSPEEDR | Output slew rate |
| GPIOx->PUPDR | Pull-up / pull-down |
| GPIOx->OTYPER | Push-pull vs open-drain |
| GPIOx->AFR[0/1] | Alternate function selection |
| EXTI->FTSR/RTSR/IMR | Interrupt edge and mask |
| SYSCFG->EXTICR | Port-to-EXTI-line routing |
| NVIC ISER/ICER/IPR | Interrupt enable and priority |

## Project structure
