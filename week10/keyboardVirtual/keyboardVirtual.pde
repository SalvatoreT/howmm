import processing.serial.*;

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
            playNote(110,250);
            break;
        case 's' :
            playNote(123,250);
            break;
        case 'd' :
            playNote(131,250);
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
