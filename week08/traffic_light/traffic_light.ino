int RED_LIGHT = P1_4;
int YELLOW_LIGHT = P1_5;
int GREEN_LIGHT = P2_0;
int CROSS_STOP = P1_0;
int CROSS_GO = P1_6;
int light = 0;
int tick = 0;

void setup()
{
  pinMode(RED_LIGHT, OUTPUT);
  pinMode(YELLOW_LIGHT, OUTPUT);
  pinMode(GREEN_LIGHT, OUTPUT);
  pinMode(CROSS_STOP, OUTPUT);
  pinMode(CROSS_GO, OUTPUT);
}

void loop()
{
  lightUp(light);
  light = (light + 1) % 3;
  delay(1000);
}

void lightUp(int light) {
  switch (light) {
    case 0 :
        digitalWrite(RED_LIGHT, HIGH);
        digitalWrite(CROSS_GO, HIGH);
        digitalWrite(YELLOW_LIGHT, LOW);
        digitalWrite(GREEN_LIGHT, LOW);
        digitalWrite(CROSS_STOP, LOW);
        break;
    case 1 :
        digitalWrite(RED_LIGHT, LOW);
        digitalWrite(CROSS_GO, LOW);
        digitalWrite(YELLOW_LIGHT, HIGH);
        digitalWrite(GREEN_LIGHT, LOW);
        digitalWrite(CROSS_STOP, LOW);
        break;
    case 2 :
        digitalWrite(RED_LIGHT, LOW);
        digitalWrite(CROSS_GO, LOW);
        digitalWrite(YELLOW_LIGHT, LOW);
        digitalWrite(GREEN_LIGHT, HIGH);
        digitalWrite(CROSS_STOP, HIGH);
        break;
    default :
        digitalWrite(RED_LIGHT, LOW);
        digitalWrite(CROSS_GO, LOW);
        digitalWrite(YELLOW_LIGHT, LOW);
        digitalWrite(GREEN_LIGHT, LOW);
        digitalWrite(CROSS_STOP, LOW);
        break;     
  }
}


