import processing.serial.*;

float diameter;
Serial myPort; // The serial port

void setup() {
    size(200, 600);
    diameter = height/3.1;
    println(Serial.list());
    String portName = Serial.list()[0];
    myPort = new Serial(this, portName, 9600);
}

void draw() {
    // black background
    fill(0);
    rect(0, 0, width, height);
    // red light
    fill(255, 0, 0);
    ellipse(width/2, height/6.0, diameter, diameter);
    // yellow light
    fill(255, 255, 0);
    ellipse(width/2, height*(3/6.0), diameter, diameter);
    // green light
    fill(0, 255, 0);
    ellipse(width/2, height*(5/6.0), diameter, diameter);
}

void mousePressed() {
    if (abs(mouseY - height/6.0) < diameter/2.0) {
        myPort.write('r');
    } else if (abs(mouseY - height*(3/6.0)) < diameter/2.0) {
        myPort.write('y');
    } else if (abs(mouseY - height*(5/6.0)) < diameter/2.0) {
        myPort.write('g');
    }
}