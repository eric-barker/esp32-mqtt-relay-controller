#include <stdio.h>
#include <math.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "driver/adc.h"

#define BLINK_GPIO 17
#define POT_GPIO 32
#define VAR_A 3.9083*1e-3
#define VAR_B -5.775*1e-7

void app_main(void) {

    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_config_channel_atten(ADC1_CHANNEL_4, ADC_ATTEN_DB_11);  // 12-bit resolution (0-4095)

    while (1) {
        int adc_reading = adc1_get_raw(ADC1_CHANNEL_4);
        float voltage = adc_reading * (3.3 / 4095.0);  // Convert to voltage (3.3V reference)
        float temperature = (-VAR_A+sqrt(pow(VAR_A, 2)-4*VAR_B*((100-(100*voltage/(3.3-voltage)))/100)))/(2*VAR_B);
        printf("Voltage: %.4fV  |  Temperature: %.2fC\n", voltage, temperature);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
