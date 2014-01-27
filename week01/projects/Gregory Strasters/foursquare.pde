void setup() {
  size(150,150);
}

void draw() {
  fill(255,0,0);
  rect(20,20,50,50);
  fill(0,255,0);
  rect(20,70,50,50);
  fill(0,0,255);
  rect(70,20,50,50);
  fill(0,0,0);
  rect(70,70,50,50);
}

void mousePressed(){
  if (mouseX>20 && mouseX<70 && mouseY>20 && mouseY<70){
    println("red");
  } else if (mouseX>20 && mouseX<70 && mouseY>70 && mouseY<120){
    println("green");
  } else if (mouseX>70 && mouseX<120 && mouseY>20 && mouseY<70){
    println("blue");
  } else if (mouseX>70 && mouseX<120 && mouseY>70 && mouseY<120){
    println("black");
  } else {
    println("you missed");
  }
}
