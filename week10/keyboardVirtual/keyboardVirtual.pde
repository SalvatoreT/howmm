import processing.serial.*;

int B0 = 31;
int C1 = 33;
int CS1 = 35;
int D1 = 37;
int DS1 = 39;
int E1 = 41;
int F1 = 44;
int FS1 = 46;
int G1 = 49;
int GS1 = 52;
int A1 = 55;
int AS1 = 58;
int B1 = 62;
int C2 = 65;
int CS2 = 69;
int D2 = 73;
int DS2 = 78;
int E2 = 82;
int F2 = 87;
int FS2 = 93;
int G2 = 98;
int GS2 = 104;
int A2 = 110;
int AS2 = 117;
int B2 = 123;
int C3 = 131;
int CS3 = 139;
int D3 = 147;
int DS3 = 156;
int E3 = 165;
int F3 = 175;
int FS3 = 185;
int G3 = 196;
int GS3 = 208;
int A3 = 220;
int AS3 = 233;
int B3 = 247;
int C4 = 262;
int CS4 = 277;
int D4 = 294;
int DS4 = 311;
int E4 = 330;
int F4 = 349;
int FS4 = 370;
int G4 = 392;
int GS4 = 415;
int A4 = 440;
int AS4 = 466;
int B4 = 494;
int C5 = 523;
int CS5 = 554;
int D5 = 587;
int DS5 = 622;
int E5 = 659;
int F5 = 698;
int FS5 = 740;
int G5 = 784;
int GS5 = 831;
int A5 = 880;
int AS5 = 932;
int B5 = 988;
int C6 = 1047;
int CS6 = 1109;
int D6 = 1175;
int DS6 = 1245;
int E6 = 1319;
int F6 = 1397;
int FS6 = 1480;
int G6 = 1568;
int GS6 = 1661;
int A6 = 1760;
int AS6 = 1865;
int B6 = 1976;
int C7 = 2093;
int CS7 = 2217;
int D7 = 2349;
int DS7 = 2489;
int E7 = 2637;
int F7 = 2794;
int FS7 = 2960;
int G7 = 3136;
int GS7 = 3322;
int A7 = 3520;
int AS7 = 3729;
int B7 = 3951;
int C8 = 4186;
int CS8 = 4435;
int D8 = 4699;
int DS8 = 4978;



Serial port;

void setup() {
    /* Set up serial port */
    println(Serial.list());
    String portName = Serial.list()[4]; // possibly change this number
    try {
        port = new Serial(this, portName, 9600);
    } catch (RuntimeException e) {
        println("Please pick a different port.");
        exit();
    }
}

void draw() {
}

void keyPressed() {
    switch (key) {
        case 'a' :
            playNote(C3,250);
            break;
        case 's' :
            playNote(D3,250);
            break;
        case 'd' :
            playNote(E3,250);
            break;
        // add more keys
        default :
            break;     
    }
}

void playNote(int note, int wait) {
    port.write(note);
    port.write(wait);
}
