void setup() 
{
  size(600, 600); // width, height (pixels)
  background(255);
}

int r = 117;
int startx = 300;
int starty = 300;
int redx;
int redy;
int greenx;
int greeny;
int bluex;
int bluey;

void draw() 
{ 
  float t = millis()/1000.0f;
  
  startx = (int)(r*sin(t))+300;
  starty = (int)(r*cos(t))+300;
  
  redx = (int)(r*cos(t));
  redy = (int)(r*sin(t));
  
  greenx = (int)(r*cos(t+(3.14/1.5)));
  greeny = (int)(r*sin(t+(3.14/1.5)));
  
  bluex = (int)(r*cos(t+(3.14/.75)));
  bluey = (int)(r*sin(t+(3.14/.75)));
  
  //red circle
  fill(255, 0, 0);
  ellipse(startx+redx, starty+redy, 200, 200);
  //green circle
  fill(0,255,0);
  ellipse(startx+greenx, starty+greeny, 200, 200);
  //blue circle
  fill(0,0,255);
  ellipse(startx+bluex,starty+bluey,200,200);
}

void mousePressed() 
{
  if (sq(mouseX-(redx+startx))+sq(mouseY-(redy+starty)) < sq(100)) 
  {
    println("Red circle clicked, background changed to red.");
    background(255,0,0);
  } 
  else 
  {
    if (sq(mouseX-(greenx+startx))+sq(mouseY-(greeny+starty)) < sq(100)) 
    {
      println("Green circle clicked, background changed to green.");
      background(0,255,0);
    }
    else
    {
     if (sq(mouseX-(bluex+startx))+sq(mouseY-(bluey+starty)) < sq(100)) 
      {
        println("Blue circle clicked, background changed to blue.");
        background(0,0,255);
      }
      else
      {
        println("No circle clicked, background changed to white.");
        background(255);
      }
    }
  }
}
