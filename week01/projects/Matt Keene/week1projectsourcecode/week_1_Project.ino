const int ledPin = 14; // the pin that the Green LED is attached to on the Launchpad

void setup()
{
  // initialize the serial communication:
  Serial.begin(9600);
  // initialize the ledPin as an output:
  pinMode(GREEN_LED, OUTPUT);
  pinMode(RED_LED, OUTPUT);
}

int disco = 0;
void loop()
{
  byte data;

  // check if data has been sent from the computer:
  if (Serial.available()) {
    // read the most recent byte (which will be from 0 to 255):
    data = Serial.read();
    // set the brightness of the LED:
    if (data == 1) {
      analogWrite(GREEN_LED, 0);
    }
    if (data == 2) {
      analogWrite(GREEN_LED, 255);
    }
    if (data == 3) {
      analogWrite(RED_LED, 0);
    }
    if (data == 4) {
      analogWrite(RED_LED, 255);
    }
    if (data == 5) {
      analogWrite(RED_LED, 0);
      analogWrite(GREEN_LED, 0);
      disco = 0;
    }
    if (data == 6) {
      disco = 1;
    }
  }
  
  if (disco == 1) {
    analogWrite(RED_LED, 0);
      analogWrite(GREEN_LED, 255);
      delay(200);
      analogWrite(RED_LED, 255);
      analogWrite(GREEN_LED, 0);
      delay(200);
  }
}
