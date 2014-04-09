int SPEAKER = P2_0;
int note, wait;

void setup()
{
    Serial.begin(9600);
}

void loop()
{
    if (Serial.available() > 1) {
        note = Serial.read();
        wait = Serial.read();
        tone(SPEAKER, note, wait);
    }
}
