#include "SPI.h" 
#include "pfatfs.h"
/*
 * MicroSD Card pin mapping
 * P1_5 -> CLK
 * P1_6 -> DO (data out)
 * P1_7 -> DI (data in)
 * P2_0 -> CS
 *
 */

unsigned short int bytes_read;
char buffer[256];
int file;
int CS_PIN = P2_0;
int SPEAKER = P2_2;

void setup() {
  pinMode(SPEAKER, OUTPUT);
  FatFs.begin(CS_PIN);
  analogFrequency(62500);
}

void loop() {
  file = FatFs.open("takefive.wav");
  
  if(file) {
    exit(1);
  }

  while (true) {
    file = FatFs.read(buffer, sizeof(buffer), &bytes_read);
    if (file || !bytes_read) {
      break;
    }
    for (uint16_t i = 0; i < bytes_read; i++) {
      analogWrite(SPEAKER, (int) buffer[i]);
      delayMicroseconds(40);
    }
  }
}
