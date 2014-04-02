#include <Servo.h> 
Servo myservo;

void setup()
{
    Serial.begin(9600);
    myservo.attach(13);
}

void loop()
{
    if (Serial.available() > 0) {
        int angle = Serial.read();
        myservo.write(angle);
    }
}