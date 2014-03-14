void setup() {
    size(512, 512);
    colorMode(HSB, 100);
    // black background
    background(0, 0, 0);
}

void draw() {
    // set the fill color to black
    fill(0, 5);
    // draw a rectangle the size of the window
    rect(0, 0, width, height);
    // set the fill
    white();
    // rainbow();
    noStroke();
    ellipse(mouseX, mouseY, 50, 50);
}

void white() {
    fill(0, 0, 100);
}

float tick = 0;
void rainbow() {
    fill(tick, 100, 100);
    tick = (tick + 1) % 100;
}
