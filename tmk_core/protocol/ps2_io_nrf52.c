#include "nrf_gpio.h"
#include "ps2_io.h"

#ifndef PS2_CLOCK_PIN
#error "Need PS2 clock pin!"
#endif
#ifndef PS2_DATA_PIN
#error "Need PS2 data pin!"
#endif

/*
 * Clock
 */
void clock_init(void)
{
    nrf_gpio_cfg_input(PS2_CLOCK_PIN, NRF_GPIO_PIN_NOPULL);
}

void clock_lo(void)
{
    nrf_gpio_cfg_output(PS2_CLOCK_PIN);
    nrf_gpio_pin_clear(PS2_CLOCK_PIN);
}
void clock_hi(void)
{
    nrf_gpio_cfg_output(PS2_CLOCK_PIN);
    nrf_gpio_pin_set(PS2_CLOCK_PIN);
}

bool clock_in(void)
{
    nrf_gpio_cfg_input(PS2_CLOCK_PIN, NRF_GPIO_PIN_NOPULL);
    return nrf_gpio_pin_read(PS2_CLOCK_PIN);
}

/*
 * Data
 */
void data_init(void)
{
    nrf_gpio_cfg_input(PS2_DATA_PIN, NRF_GPIO_PIN_NOPULL);
}

void data_lo(void)
{
    nrf_gpio_cfg_output(PS2_DATA_PIN);
    nrf_gpio_pin_clear(PS2_DATA_PIN);
}
void data_hi(void)
{
    nrf_gpio_cfg_output(PS2_DATA_PIN);
    nrf_gpio_pin_set(PS2_DATA_PIN);
}

bool data_in(void)
{
    nrf_gpio_cfg_input(PS2_DATA_PIN, NRF_GPIO_PIN_NOPULL);
    return nrf_gpio_pin_read(PS2_DATA_PIN);
}
