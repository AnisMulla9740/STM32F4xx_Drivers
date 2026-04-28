/*
 * main.c  –  LED Blink Example
 * Target  :  STM32F407 Discovery Board
 * LED     :  PD12 (Green LED on Discovery board)
 *
 * Uses the custom stm32f407xx GPIO driver.
 */

#include "stm32f407xx.h"
#include "stm32f407xx_gpio.h"

void delay(uint32_t count)
{
    for (volatile uint32_t i = 0; i < count; i++);
}

int main(void)
{
    GPIO_Handle_t GpioLed;

    GpioLed.pGPIOx                    = GPIOD;          /* Port D                  */
    GpioLed.PinConfig.PinNumber       = GPIO_PIN_12;    /* PD12 – Green LED        */
    GpioLed.PinConfig.PinMode         = GPIO_MODE_OUTPUT;
    GpioLed.PinConfig.PinSpeed        = GPIO_SPEED_LOW;
    GpioLed.PinConfig.PinPuPdControl  = GPIO_PUPDCONTROL_NOPUPD;
    GpioLed.PinConfig.PinOptType      = GPIO_OPTYPE_PP; /* Push-pull               */
    GpioLed.PinConfig.PinAltFunMode   = 0;              /* Not used in output mode */


    GPIO_PeriClockControl(GPIOD, 1);
    GPIO_Init(&GpioLed);


    while (1)
    {
        GPIO_ToggleOutputPin(GPIOD, GPIO_PIN_12);
        delay(2000000);   /* ~500 ms at 16 MHz HSI */
    }

    return 0;
}
