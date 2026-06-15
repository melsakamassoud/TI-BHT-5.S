/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */

/*

USART1_RX liegt an PA10 (JP7)
USART1_TX liegt an PA9

USART1->BRR Baudratenregister
USART1->DR Datenregister
USART1->CR1/2/3 Kontrollregister
Wozu dient das TxE Flag im Register USART1→SR
Gibt an ob die Daten im TDR register komplett in das shift register transferiert wurden (1)
Ein schreiben in das TDR register cleared das TXE bit (0)

char G = 0x47;
char R = 0x52;

Datenblatt Register Seite 971
Procedure:
1. Enable the USART by writing the UE bit in USART_CR1 register to 1.
2. Program the M bit in USART_CR1 to define the word length.
3. Program the number of stop bits in USART_CR2.
4. Select DMA enable (DMAT) in USART_CR3 if Multi buffer Communication is to take
place. Configure the DMA register as explained in multibuffer communication.
5. Select the desired baud rate using the USART_BRR register.
6. Set the TE bit in USART_CR1 to send an idle frame as first transmission.
7. Write the data to send in the USART_DR register (this clears the TXE bit). Repeat this
for each data to be transmitted in case of single buffer.
8. After writing the last data into the USART_DR register, wait until TC=1. This indicates
that the transmission of the last frame is complete. This is required for instance when
the USART is disabled or enters the Halt mode to avoid corrupting the last
transmission

 */

char G = 0x47;
char R = 0x52;

char uart_receive(void)
{
    // warten bis ein Zeichen empfangen wurde
	// warten bis das RXNE (Read data register not empty) bit gesetzt wird
    while (!(USART1->SR & (1 << 5)));

    return (char)USART1->DR;
}


void uart_send(char c)
{
    // warten bis das Datenregister leer ist
	// warten bis das TXE (Transmit data register empty) bit gesetzt wird
    while (!(USART1->SR & (1 << 7)));

    USART1->DR = c;

    // warten bis das Zeichen vollständig übertragen wurde
    // warten bis das TC (Transmision Complete) bit gesetzt wird
    while (!(USART1->SR & (1 << 6)));
}

// tamper button
void EXTI15_10_IRQHandler(void)
{
    uart_send('R');

    EXTI->PR = (1 << 13);
}

// wakeup button
void EXTI0_IRQHandler(void)
{
    uart_send('G');

    EXTI->PR = (1 << 0);
}

// aufgabe 2.2 echo
// void USART1_IRQHandler(void)
// {
//         char c = (char)USART1->DR;
//
//         uart_send(c);
// }

// aufgabe 2.3 toggle command
void USART1_IRQHandler(void)
{
    char c = (char)USART1->DR;

    if(c == 'G')
    {
        GPIOG->ODR ^= (1 << 6);
    }

    if(c == 'R')
    {
        GPIOG->ODR ^= (1 << 10);
    }
}

int main(void)
{

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* Configure the system clock */
	SystemClock_Config();

	// enable gpio- g/c/a clock
    RCC->AHB1ENR |= ((1 << 6) | (1 << 2) | (1 << 0));
    // enable system configuration controller clock enable
    RCC->APB2ENR |= (1 << 14);
    // enable USART1 clock
    RCC->APB2ENR |= (1 << 4);
    // set pg6(grün), pg10(rot) as outputs
    GPIOG->MODER &= ~((3 << (6*2)) | (3 << (10*2)));  // clear mode bits
    GPIOG->MODER |=  ((1 << (6*2)) | (1 << (10*2)));  // 01 = output

    // set pc13/B3 User/Tamper/Key Button as input (00 = input/reset)
    GPIOC->MODER &= ~(3 << (13*2));
    // set pa0/B2 Wakeup Button as input (00 = input/reset)
    GPIOA->MODER &= ~(3 << (0*2));

    // reset PA9
    GPIOA->MODER &= ~(3 << (9*2));
    // configure as alternate function mode
    GPIOA->MODER |= (2 << (9*2));

    // reset PA10
    GPIOA->MODER &= ~(3 << (10*2));
    // configure as alternate function mode
    GPIOA->MODER |= (2 << (10*2));

    // pins 8-15 gehören AFR[1]
    // AF7 = USART1..3
    // für pin 9 stelle AF7 ein
    // reset alternate function for pin9 on port a
    GPIOA->AFR[1] &= ~(0xF << 4);
    // set alternate function for pin 9 to AF7
    GPIOA->AFR[1] |= (7 << 4);

    // reset alternate function for pin10 on port a
    GPIOA->AFR[1] &= ~(0xF << 8);
    // set alternate function for pin 10 to AF7
    GPIOA->AFR[1] |= (7 << 8);

    // reset green and red user leds
    GPIOG->ODR |= ((1 << 6) | (1 << 10));

    // reset EXTI13 zu 0000
    SYSCFG->EXTICR[3] &= ~(0xF << 4);
    // Auswahl von PC13 als externe Interruptquelle
    SYSCFG->EXTICR[3] |= (0x2 << 4);

    // reset EXTI0 zu 0000; Auswahl von PA0 als externe Interruptquelle
    SYSCFG->EXTICR[0] &= ~(0x0 << 0);

    // EXTI configuration tamper button don't mask
    EXTI->IMR |= (1 << 13);
    // enable falling trigger
    EXTI->FTSR |= (1 << 13);
    // disable rising trigger
    EXTI->RTSR &= ~(1 << 13);

    // EXTI configuration wakeup button don't mask
    EXTI->IMR |= (1 << 0);
    // enable rising trigger
    EXTI->RTSR |= (1 << 0);
    // disable falling trigger
    EXTI->FTSR &= ~(1 << 0);

    // Verknüpfung des tamper Interrupts mit Routine
    NVIC_EnableIRQ(EXTI15_10_IRQn);
    __enable_irq();
    NVIC_EnableIRQ(EXTI0_IRQn);
    __enable_irq();


    // define the word length to be 8 bit long
    USART1->CR1 &= ~(1 << 12);
    // enable interrupt for when ORE=1 or RXNE=1 in the USART_SR register
    USART1->CR1 |= (1 << 5);
    NVIC_EnableIRQ(USART1_IRQn);
    __enable_irq();
    // configure the number of stop bits to 1
    USART1->CR2 &= ~(3 << 12);
    // turn off multibuffer communication
    USART1->CR3 &= ~((1 << 6) | (1 << 7));
    // reset baud rate value;
    USART1->BRR = 0x00000000;
    // configure new baud rate
    USART1->BRR = 0x682;
    // USART1 enable bit setzen
    USART1->CR1 |= (1 << 13);

    // enables receiving
    USART1->CR1 |= (1 << 2);
    // enable transmitting
    USART1->CR1 |= (1 << 3);


  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {

  }

}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
