PImage po;
PImage tinkywinky;
PImage dipsy;
PImage lala;

void setup() 
{
size(1000,1000);
po = loadImage("po.jpg");
tinkywinky = loadImage("tinkywinky.jpg");
dipsy = loadImage("dipsy.gif");
lala = loadImage("lala.jpg");
}

void draw() {
  background(255);
  image(po, 0, 0);
  image(tinkywinky, 200, 0);
  image(dipsy, 400, 0);
   image(lala, 600, 0);
}

void mousePressed() {
  if ((mouseX>0) && (mouseX<188) && (mouseY<331)) {
    println("Po");
  }
  else if ((mouseX>188) && (mouseX<376) && (mouseY<331)) {
    println("Twinky Winky");
  }
  else if ((mouseX>376) && (mouseX<564) && (mouseY<331)) {
    println("Dipsy");
  }
  else if ((mouseX>564) && (mouseX<752) && (mouseY<331)) {
    println("Lala");
  }
  else {
    println("Nothing");
  }
}

