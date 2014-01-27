import ddf.minim.*;

int FINDING = 1;
int WIN = 2;
int WIN_SCREEN = 3;

float cow_x = 0;
float cow_y = 0;
int discover_radius = 100;
int cow_width = 100;
int cow_height = 100;
int counter = 0;
int finding_cow = 0;
int button2_color = 155;
int button3_color = 155;

AudioPlayer player;
boolean has_volume;
Minim minim;
PImage img;

int play_count = 0;
float max_dist = 0;

void setup() {
   size(600, 600);
   minim = new Minim(this);
   player = minim.loadFile("moo.mp3", 2048);
   img = loadImage("cow.jpg");
   has_volume = player.hasControl(Controller.VOLUME);
   player.loop();
   player.pause();
}

void draw() {
  background(255);
  if (finding_cow == FINDING) {
      counter = 0;
      if (!player.isPlaying()) {
        player.loop();
      }
      play_count += 1;
      float val = sq(mouseX-cow_x)+sq(mouseY-cow_y); // TODO: Distance
      if (has_volume) {
        player.setVolume(val/600.0);
      } else {
        //text(val, 50, 50);
        //text(max_dist, 175, 50);
        text("COW", 100, 80);
        text(cow_x, 100, 100);
        text(cow_y, 100, 120);
        text("YOU", 200, 80);
        text(mouseX, 200, 100);
        text(mouseY, 200, 120);
        //text((val/max_dist), 300, 300);
        //text(1-(val/max_dist), 400, 400);
        player.setGain(-1-(val/max_dist));
        player.setGain(0);
      }
  } else if (finding_cow == WIN) {
      image(img, cow_x, cow_y, cow_width, cow_height);
      counter += 1;
      player.pause();
      if (counter > 50) {
        finding_cow += 1;
      }
  } else if (finding_cow == WIN_SCREEN) {
      fill(0, 102, 153);
      textSize(32);
      text("YOU WIN!", 275, 30); 
      
      fill(0, 110, 160);
      rect(200, 200, 200, 50);
      fill(255);     
      textSize(18);
      text("Do you want to\nfind the cow?", 230, 218);
      fill(button2_color);
      ellipse(50, 50, 50, 50);
      fill(button3_color);
      ellipse(600-50, 600-50, 50, 50);
  } else {
      fill(0, 110, 160);
      rect(200, 200, 200, 50);
      fill(255);
      textSize(18);
      text("Do you want to\nfind the cow?", 230, 218);
      fill(button2_color);
      ellipse(50, 50, 50, 50);
      fill(button3_color);
      ellipse(600-50, 600-50, 50, 50);
  }
}

void mousePressed() {
    if (finding_cow == FINDING) {
      if (sq(mouseX-cow_x)+sq(mouseY-cow_y)< sq(discover_radius)) {
        finding_cow = WIN;
      }
    } else if (finding_cow == WIN) {
      ;
    } else { //WIN_SCREEN or OTHER
      if ((mouseX > 200 && mouseX < 400) && 
          (mouseY > 200 && mouseY < 250)) {
        cow_x = random(600);
        cow_y = random(600);
        max_dist = sq(600);
        finding_cow = FINDING;
      } else if (sq(mouseX-50)+sq(mouseY-50)< sq(25)) {
        button2_color = (button2_color + 10) % 255;
      } else if (sq(mouseX-(600-50))+sq(mouseY-(600-50))< sq(25)) {
        button3_color = (button3_color - 10) % 255;
      }
    }
}

void stop() {
    player.close();
    minim.stop();
    super.stop();
}
