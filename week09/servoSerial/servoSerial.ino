#include <Servo.h> 
Servo myservo;
int DATA_PIN = P1_7;

void setup()
{
    Serial.begin(9600);
    myservo.attach(DATA_PIN);
}

void loop()
{
    if (Serial.available() > 0) {
        int angle = Serial.read();
        myservo.write(angle);
    }
}