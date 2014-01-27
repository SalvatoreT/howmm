void setup() {
  size(640, 640);
}

void draw() {
  fill(10, 230, 200);
  ellipse(320, 150, 100, 100);
  
  fill(100, 23, 200);
  rect(250, 250, 150, 100); 
  
  fill(24, 87, 200);
  rect(250, 400, 150, 100);
  fill(0);
  text("change background",270,450);
  text("encouraging message",260,300);
  text("message",300,150);
  //background(150);
}
void mousePressed() {
  String B=" ";
  if (sq(mouseX-320)+sq(mouseY-150) < sq(50)) {
    //textSize(24);
    //fill(255,0,0);
    //text("button pressed",300,100); 
   println("button pressed"); 
  } else if (mouseX < 350 && mouseX > 200 && mouseY < 350 && mouseY >250 ) {
    println("you're a winner");
  } else if (mouseX < 350 && mouseX > 200 && mouseY < 500 && mouseY >400) {
    background(random(255));
  } else {
    background(255);
  }
}

    
  
