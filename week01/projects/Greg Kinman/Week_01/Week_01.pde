import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

PImage img;

void setup() {
  
  size(700, 700);
  background(0);
  
  img = loadImage("homer.jpg");
  minim = new Minim(this);
  player = minim.loadFile("doh.wav");
  input = minim.getLineIn();
  
}

int count = 0;
int x = 400;
void draw() {
  
  // Yellow square.
  fill(255, 255, 0);
  rect(50, 50, 200, 200);
  
  // Red circle.
  fill(255, 0, 0);
  ellipse(450, 150, 100, 100);
  
  // Moving blue square.
  fill(0, 0, 255);
  rect(x, 350, 100, 100);
  if (floor(count / 150) % 2 == 0 ){
    x = x + 1;
  } else {
    x = x - 1;
  }
  count = count + 1;
  
  // Homer.
  image(img, 50, 350, 300, 300);
  
}

void mousePressed() {
  
  if ((mouseX > 50) && (mouseX < 250) && (mouseY > 50) && (mouseY < 250)) {
    println("Yellow square.");
  } else if ((mouseX > 50) && (mouseX < 350) && (mouseY > 350) && (mouseY < 650)){
    println("D'oh!");
    player.play();
  } else if (sq(mouseX - 450) + sq(mouseY - 150) < sq(100)){
    println("Red circle.");
  } else if ((mouseX > x) && (mouseX < (x + 100)) && (mouseY > 350) && (mouseY < 450)) {
    println("Moving blue square.");
  }
  
}
