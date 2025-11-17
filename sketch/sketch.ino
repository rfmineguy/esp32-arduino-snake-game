#include <Arduino.h>
// #include <LiquidCrystal.h>

const int rs = 34;

void setup() {
    Serial.begin(9600);
    Serial.print("Hello ESP32");

    //pinMode(35, OUTPUT);
    //digitalWrite(35, HIGH);
}

void loop() {
    Serial.print("Hello ESP32");
    delay(1000);
}
