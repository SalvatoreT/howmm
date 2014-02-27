int RED_LIGHT = P1_4;
int YELLOW_LIGHT = P1_5;
int GREEN_LIGHT = P2_0;
char input = 'r';

void setup()
{
  Serial.begin(9600);
  pinMode(RED_LIGHT, OUTPUT);
  pinMode(YELLOW_LIGHT, OUTPUT);
  pinMode(GREEN_LIGHT, OUTPUT);
}

void loop()
{
  if (Serial.available() > 0) {
    input = Serial.read();
  }
  switch (input) {
    case 'r' :
        digitalWrite(RED_LIGHT, HIGH);
        digitalWrite(YELLOW_LIGHT, LOW);
        digitalWrite(GREEN_LIGHT, LOW);
        break;
    case 'y' :
        digitalWrite(RED_LIGHT, LOW);
        digitalWrite(YELLOW_LIGHT, HIGH);
        digitalWrite(GREEN_LIGHT, LOW);
        break;
    case 'g' :
        digitalWrite(RED_LIGHT, LOW);
        digitalWrite(YELLOW_LIGHT, LOW);
        digitalWrite(GREEN_LIGHT, HIGH);
        break;
    default :
        digitalWrite(RED_LIGHT, LOW);
        digitalWrite(YELLOW_LIGHT, LOW);
        digitalWrite(GREEN_LIGHT, LOW);
        break;     
  }
}

