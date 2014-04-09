import processing.serial.*;
Serial port;

void setup() {
    size(900, 300);
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

void mousePressed() {
    // left button click
    if (mouseX > 0 && mouseX < 300) {
    }
    // middle button click
    // ...

    // right button click
    // ...
}

void keyPressed() {
    switch (keyCode) {
        case LEFT :
            port.write(370);
            port.write(1000/4);
            break;
        case UP :
            port.write(139);
            port.write(1000/4);
            break;
        case RIGHT : 
            break;
        default :
            // nothing
            break;     
    }
}

void playNote(int note, int wait) {
    port.write(note);
    port.write(wait);
}
