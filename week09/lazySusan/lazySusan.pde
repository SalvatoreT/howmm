import processing.serial.*;
Serial port;
int SPEED = 5;
int angle;
int old_angle;
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
    angle = 90;
}

void draw() {
    if (angle != old_angle) {
        port.write(angle);
        println("angle: "+angle);
    }
    // Left button
    fill(255, 0, 0); // red, green, blue
    rect(0, 0, 300, height);

    // draw a middle button
    // ...
    
    // draw a right button
    // ...
    
    old_angle = angle;
}

void mousePressed() {
    // left button click
    if (mouseX > 0 && mouseX < 300) {
        angle = max(angle - SPEED, 0);
    }
    // middle button click
    // ...

    // right button click
    // ...
}

void keyPressed() {
    switch (keyCode) {
        case LEFT :
            angle = max(angle - SPEED, 0);
            break;
        case UP :
            angle = 90;
            break;
        case RIGHT :
            /* 
             * the extra -SPEED keeps the motor from
             * hitting the edge and freaking out
             */
            angle = min(angle + SPEED, 180 - SPEED); 
            break;
        default :
            // nothing
            break;     
    }
}
