#include <Arduino.h>
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
    pinMode(PS2_CLOCK_PIN, INPUT);
}

void clock_lo(void)
{
    digitalWrite(PS2_CLOCK_PIN, 0);
    pinMode(PS2_CLOCK_PIN, OUTPUT);
}
void clock_hi(void)
{
    digitalWrite(PS2_CLOCK_PIN, 1);
    pinMode(PS2_CLOCK_PIN, OUTPUT);
}

bool clock_in(void)
{
    pinMode(PS2_CLOCK_PIN, INPUT);
    return digitalRead(PS2_CLOCK_PIN);
}

/*
 * Data
 */
void data_init(void)
{
    pinMode(PS2_DATA_PIN, INPUT);
}

void data_lo(void)
{
    digitalWrite(PS2_DATA_PIN, 0);
    pinMode(PS2_DATA_PIN, OUTPUT);
}
void data_hi(void)
{
    digitalWrite(PS2_DATA_PIN, 1);
    pinMode(PS2_DATA_PIN, OUTPUT);
}

bool data_in(void)
{
    pinMode(PS2_DATA_PIN, INPUT);
    return digitalRead(PS2_DATA_PIN);
}
