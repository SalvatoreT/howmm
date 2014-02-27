import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.serial.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class virtTrafficLight extends PApplet {



float diameter;
Serial myPort; // The serial port

public void setup() {
    size(200, 600);
    diameter = height/3.1f;
    println(Serial.list());
    String portName = Serial.list()[9];
    myPort = new Serial(this, portName, 9600);
}

public void draw() {
    // black background
    fill(0);
    rect(0, 0, width, height);
    // red light
    fill(255, 0, 0);
    ellipse(width/2, height/6.0f, diameter, diameter);
    // yellow light
    fill(255, 255, 0);
    ellipse(width/2, height*(3/6.0f), diameter, diameter);
    // green light
    fill(0, 255, 0);
    ellipse(width/2, height*(5/6.0f), diameter, diameter);
}

public void mousePressed() {
    if (abs(mouseY - height/6.0f) < diameter/2.0f) {
        myPort.write('r');
    } else if (abs(mouseY - height*(3/6.0f)) < diameter/2.0f) {
        myPort.write('y');
    } else if (abs(mouseY - height*(5/6.0f)) < diameter/2.0f) {
        myPort.write('g');
    }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "virtTrafficLight" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
