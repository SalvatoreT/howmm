int SPEAKER = P2_0;
int note0, note1, wait;

void setup()
{
    Serial.begin(9600);
}

void loop()
{
    if (Serial.available() > 2) {
        note0 = Serial.read();
        note1 = Serial.read();
        wait = Serial.read();
        tone(SPEAKER, (note0 << 8) + note1, wait);
    }
}
