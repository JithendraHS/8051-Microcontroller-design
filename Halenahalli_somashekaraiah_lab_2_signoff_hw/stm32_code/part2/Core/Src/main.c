/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
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
#include "stm32f4xx.h"

#define RCC_GPIOA_ENR     (0b01)
#define RCC_GPIOD_ENR     (0b01 << 3)
#define RCC_TIM2_ENR      (0b01)
#define GPIOA_PORT0_INPUT (0b11) // this will be negated during assignment
#define GPIOD_PORT12_OUTPUT (0b01 << 24)
#define GPIOD_PORT14_OUTPUT (0b01 << 28)
#define GPIOD_PORT15_OUTPUT (0b01 << 30)
#define EXTI_IMR_PORTA0   (0b01)
#define EXTI_RTSR_PORTA0   (0b01)
#define PORT12             (0b01 << 12)
#define PORT14             (0b01 << 14)
#define PORT15             (0b01 << 15)
//#define EXTI_PR_PR0      (0b01)

#define TIM2_DIER_UIE      (0b01)
#define TIM2_DIER_TIE      (0b01 << 6)
#define TIM2_CR1_CE        (0b01)
#define TIM2_SR_UIF      (0b01)

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void TIM2_Init(void);

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();

  /* Initialize Timer2 mode, prescalar and auto-reload */
  TIM2_Init();

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 192;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 8;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
    RCC->AHB1ENR |= RCC_GPIOA_ENR | RCC_GPIOD_ENR;

    //GPIOA->MODER &= ~(GPIOA_PORT0_INPUT);
    GPIOD->MODER |= GPIOD_PORT12_OUTPUT | GPIOD_PORT14_OUTPUT | GPIOD_PORT15_OUTPUT;

    EXTI->IMR |= EXTI_IMR_PORTA0;
    EXTI->RTSR |= EXTI_RTSR_PORTA0;

    // turn ON LEDs
    GPIOD->BSRR |= PORT12;

    NVIC_EnableIRQ(EXTI0_IRQn);
}

static void TIM2_Init(void)
{
	//Enable clock access
	RCC->APB1ENR |= RCC_TIM2_ENR;

	//Configure the peripheral to have visible period
    TIM2->DIER |= TIM2_DIER_UIE;
    TIM2->PSC = 700;
    TIM2->ARR = 18600;

	// Enable interrupts
	NVIC_EnableIRQ(TIM2_IRQn);

	//Enable clock
	TIM2->CR1 |= TIM2_CR1_CE;

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

/**
  * @brief This function handles System tick timer.
  */
void EXTI0_IRQHandler(void)
{
	/* Resetting pending register used for interrupt */
	EXTI->PR |= EXTI_PR_PR0;
    static int i = 0;
    i++;
    /* Disable timer 2 in odd interval, Enable timer 2 in even interval */
    if((i % 2) == 1){
	    TIM2->CR1 &= ~(TIM2_CR1_CE);
	    GPIOD->BSRR |= PORT12 << 16;
	    GPIOD->BSRR |= PORT15 << 16;
    }else{
	    TIM2->CR1 |= TIM2_CR1_CE;
    }
}

/**
  * @brief This function handles System tick timer.
  */
void TIM2_IRQHandler(void)
{
	/* clearing update Interrupt flag */
	TIM2->SR &= ~(TIM2_SR_UIF);
    static int i = 0;
    i++;
    /* toggle LED state to make it appear as blinking in odd and even interval */
    if(i % 2){
	     GPIOD->BSRR |= PORT15;
	     GPIOD->BSRR |= PORT12 << 16;
    }else{
    	 GPIOD->BSRR |= PORT12;
	     GPIOD->BSRR |= PORT15 << 16;
    }
}
