#include "main.h"
#include "gpio.h"
#include "stm32f429xx.h"

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

// Die Funktion lässt n ms den Timer komplett hochzählen auf 16000 (pro ms) und stoppt diesen dann
void delay_ms(uint16_t n) {
	int i;

	SysTick->LOAD = 16000; // setzt den max. wert
	SysTick->VAL = 0; // setzt den Zählwert zurück
	// 0x5 -> 0101
	// bit 0=1: SysTick-Timer wird aktiviert,
	// bit 1=0: schaltet interrupts bei Überlauf aus
	// bit 2=1: setzt clock source auf cortex clock
	SysTick->CTRL = 0x5;


	for(i = 0; i < n; i++) {
		// while SysTick-CTRL-Registe & 0x10000 == 0
		// solange das Count bit nicht gesetzt wird, bleibe in der Schleife
		while((SysTick->CTRL & 0x10000) == 0) {}
	}
	// stoppt den timer und setzt die quelle wieder zurück auf die AHB clock
	SysTick->CTRL = 0;
}

volatile int fuA = 0;

void fussgaengerampel () {
	switch(fuA) {
		case 0:
			// rot an grün aus
			GPIOG->ODR &= ~(1 << 10);
			GPIOG->ODR |= (1 << 6);
			// delay_ms(4000);
			break;
		case 4:
			// grün an rot aus
			GPIOG->ODR &= ~(1 << 6);
			GPIOG->ODR |= (1 << 10);
			// delay_ms(2000);
			break;
	}
}

volatile int faA = 0;

void fahrzeugampel () {
	switch(faA) {
		case 0:
			// rot/led3 an
			GPIOG->ODR &= ~(1 << 10);
			// delay_ms(3000);
			break;
		case 3:
			// orange/led2 an
			GPIOG->ODR &= ~(1 << 7);
			// delay_ms(1000);
			break;
		case 4:
			// rot/led3 aus, orange/led2 aus
			GPIOG->ODR |= (1 << 10);
			GPIOG->ODR |= (1 << 7);
			GPIOG->ODR &= ~(1 << 6);
			// delay_ms(3000);
			break;
		case 7:
			// grün/led1 aus, orange/led2 an
			GPIOG->ODR |= (1 << 6);
			GPIOG->ODR &= ~(1 << 7);
			// delay_ms(1000);
			break;
		case 8:
			// orange/led2 aus
			GPIOG->ODR &= ~(1 << 7);
			break;
	}
}

volatile int mode = 0;


void EXTI15_10_IRQHandler() {
	mode = !mode;

	// reset ampel at switching
	// fuA = 0;
	// faA = 0;
	// EXTI->PR = (1 << 13);
	EXTI->PR |= (1 << 13);
}

void TIM2_IRQHandler() {
	if (TIM2->SR & TIM_SR_UIF) {
	        if (mode)
	        {
	            faA++;
	            if (faA > 8)
	                faA = 0;
	        }
	        else
	        {
	            fuA++;
	            if (fuA > 6)
	                fuA = 0;
	        }

	        TIM2->SR &= ~TIM_SR_UIF;
	}
}

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  HAL_Init();
  SystemClock_Config();

  // enable gpiog/c clock
  RCC->AHB1ENR |= ((1 << 6) | (1 << 2));
  // enable system configuration controller clock enable
  RCC->APB2ENR |= (1 << 14);
  // enable TIM2
  RCC->APB1ENR |= (1 << 0);
  // set pg6(grün), pg7(orange), pg10(rot), pg12(blau) as outputs
  GPIOG->MODER &= ~((3 << (6*2)) | (3 << (10*2)) | (3 << (7*2)) | (3 << (12*2)));  // clear mode bits
  GPIOG->MODER |=  ((1 << (6*2)) | (1 << (10*2)) | (1 << (7*2)) | (1 << (12*2)));  // 01 = output
  // set pc13/B3 User Button as input (00 = input/reset)
  GPIOC->MODER &= ~(3 << (13*2));
  // reset user leds
  GPIOG->ODR |= ((1 << 6) | (1 << 7) | (1 << 10) | (1 << 12));
  // reset EXTI13 zu 0000
  SYSCFG->EXTICR[3] &= ~(0xF << 4);
  // Auswahl von PC13 als externe Interruptquelle
  SYSCFG->EXTICR[3] |= (0x2 << 4);

  // EXTI configuration
  EXTI->IMR |= (1 << 13);
  // enable falling trigger
  EXTI->FTSR |= (1 << 13);
  // disable rising trigger
  EXTI->RTSR &= ~(1 << 13);

  // Verknüpfung des Interrupts mit Routine
  NVIC_EnableIRQ(EXTI15_10_IRQn);
  __enable_irq();

  // angenommen cpu takt 16MHz
  TIM2->PSC = 16000 - 1;
  // läuft jede sekunde über
  TIM2->ARR = 1000 - 1;
  // update interrupt enable für tim2
  TIM2->DIER |= (1 << 0);

  NVIC_EnableIRQ(TIM2_IRQn);
  // start the timer
  TIM2->CR1 |= (1 << 0);

   while (1) {
	  if (mode)
		  fahrzeugampel();
	  else
		  fussgaengerampel();
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

