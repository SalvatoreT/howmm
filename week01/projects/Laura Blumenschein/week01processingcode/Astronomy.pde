/* @pjs preload="MOON.jpg";
preload="Saturn.jpg";
preload="Andromeda_galaxy.jpg";
preload="Solar_eclipse.jpg";*/ 

PImage moon;
PImage saturn;
PImage andromeda;
PImage solar;

void setup()
{
  size(512, 512);
  moon = loadImage("MOON.jpg");
  saturn = loadImage("Saturn.jpg");
  andromeda = loadImage("Andromeda_galaxy.jpg");
  solar = loadImage("Solar_eclipse.jpg");
  background(0);
  textSize(36);
  text("The Moon", 512/8, 512/4);
  text("Saturn", 512*5/8, 512/4);
  text("Andromeda", 512/10, 512*3/4);
  text("Eclipse", 512*5/8, 512*3/4);
}
int m=0;
int s=0;
int a=0;
int e=0;
void draw()
{
  if(m==1)
  {
    image(moon, 0, 0, 512/2, 512/2);
  }
  if(s==1)
  {
    image(saturn, 512/2, 0, 512/2, 512/2);
  }
  if(a==1)
  {
    image(andromeda, 0, 512/2, 512/2, 512/2);
  }
  if(e==1)
  {
    image(solar, 512/2, 512/2, 512/2, 512/2);
  }
}

void mousePressed()
{
  if(mouseX<512/2 && mouseY<512/2)
  {
    println("The Moon");
    m=1;
  }
  else if(mouseX>512/2 && mouseY<512/2)
  {
    println("Saturn");
    s=1;
  }
  else if(mouseX<512/2 && mouseY>512/2)
  {
    println("The Andromeda Galaxy");
    a=1;
  }
  else if(mouseX>512/2 && mouseY>512/2)
  {
    println("A Solar Eclipse");
    e=1;
  }
}
