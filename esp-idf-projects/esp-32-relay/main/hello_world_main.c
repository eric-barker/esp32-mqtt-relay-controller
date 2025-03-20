#include <stdio.h>
#include <inttypes.h>
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#define RELAY_1_PIN 2
#define RELAY_2_PIN 0
#define RELAY_3_PIN 4

uint8_t relay_state = 0;

void app_main(void) {
    gpio_reset_pin(RELAY_1_PIN);
    gpio_set_direction(RELAY_1_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(RELAY_1_PIN, relay_state);
    while (true) {
        ESP_LOGI("Switching the Relay");

        relay_state = !relay_state;
        vTaskDelay(1000 / portTICK_PERIOD_MS);

    }
}
