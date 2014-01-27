import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

PImage img;
PImage img2;
void setup()
{
  size(600, 600); //500 by 500pixels
  img = loadImage("panda_rice.jpg");
  img2 = loadImage("puppyhugs.jpg");
}
int y=0;
void draw()
{
  fill (900, 0,0);
  rect (0, 350, 150, 150);
  fill (79, 92, 224); //whatever color this is at axis x,y
  ellipse (250,250,100,100);// (x, y, size, size)
  fill (84,178,100);
  rect (200, 350, 150, 50);
  fill (160,220,90);
  ellipse (500,500,50,50);
}

void mousePressed() { 
  if (sq(mouseX-250)+sq(mouseY-250) <sq(50)) {
      println("ohaider!");
      image(img2,5,5,240,240);
  } else {
    println("good god, what is this?!");
  }
  if (sq(mouseX-500)+sq(mouseY-500)<sq(50)){
    println("can haz chzbrgr?");
    image(img,250,0,320,240);    
  }
}
