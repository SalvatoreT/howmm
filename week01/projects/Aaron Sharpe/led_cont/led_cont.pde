import processing.serial.*;
Serial port;

void setup() {
   size(900, 400);
   println("Available serial ports:");
   println(Serial.list());
   port = new Serial(this, Serial.list()[0], 9600); 
   println(Serial.list()[0]);

}

void draw() {
  background(255);
  fill(0, 255, 0);
  textSize(32);
  text("Green LED", 100, 100);
  fill(255, 0, 0);
  text("Red LED", 500, 100);
  
  
  fill(200);
  rect(100, 200, 100, 100);
  rect(300, 200, 100, 100);
  rect(500, 200, 100, 100);
  rect(700, 200, 100, 100);
  
  fill(0);
  textSize(20);
  text("On", 135 , 255);
  text("Off", 335 , 255);
  text("On", 535 , 255);
  text("Off", 735 , 255);
}

void mousePressed() {
  if ((mouseY > 200) && (mouseY < 300)) {
    if ((mouseX > 100) && (mouseX < 200)) {
      println("Green LED On");
      port.write(1);
    } else if ((mouseX > 300) && (mouseX < 400)) {
      println("Green LED Off");
      port.write(0);
    } else if ((mouseX > 500) && (mouseX < 600)) {
      println("Red LED On");
      port.write(3);
    } else if ((mouseX > 700) && (mouseX < 800)) {
      println("Red LED Off");
      port.write(2);
    }
  } 
}
