void setup()
{
  size(500,500);
}

int bgr = 0;
int bgg = 0;
int bgb = 0;

boolean circ = false;
boolean toggle = false;
int y = 0;
int count = 0;
void draw()
{
  background(bgr, bgg, bgb);
  if(toggle)
  {
    if(circ && count == 5)
    {
      fill(255,0,0);
      circ = !circ;
      count = 0;
    }
    else if (count == 5)
    {
      fill(0, 255, 0);
      circ = !circ;
      count = 0;
    }
    count = count + 1;
  }
  else
  {
    fill(255,0,0);
  }
  ellipse(250, y, 50, 50);
  y = y+3;
  if (y > 550)
  {
     y = 0;
  }
}

void mousePressed()
{
  println("Mouse Pressed at (" + mouseX + "," + mouseY + ")!");
  
  if(sq(mouseX - 250) + sq(mouseY - y) < sq(50))
  {
    toggle=!toggle;
  }
  else if(mouseX < 250 && mouseY < 250)
  {
    bgr = 0;
    bgg = 0;
    bgb = 0;
  }
  
  else if (mouseX > 250 && mouseY < 250)
  {
    bgr = 255;
    bgg = 0;
    bgb = 0;
  }
  
  else if (mouseX < 250 && mouseY > 250)
  {
    bgr = 0;
    bgg = 255;
    bgb = 0;
  }
  
  else if (mouseX > 250 && mouseY > 250)
  {
    bgr = 0;
    bgg = 0;
    bgb = 255;
  }
  
  else
  {
    bgr = 255;
    bgg = 255;
    bgb = 255;
  }
  
}
