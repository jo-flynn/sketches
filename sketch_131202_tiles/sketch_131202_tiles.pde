import processing.opengl.*;

void setup() {
    size(800,800, OPENGL);
    smooth();
    background(255);
    fill(0, 182, 130);
    frameRate(60);
    noStroke();
}

void draw() {
    background(255);
    translate(0, 25);
    int y = 25;

    while (y <= height) {
        pushMatrix();
        for (int i = 25; i <= width; i += 25) {
            fill(0, millis() * 0.001 * TWO_PI / 10.0, millis() * 0.001 * TWO_PI / 10.0);
            rotateX(millis() * 0.001 * TWO_PI / 10.0);
            box(50, 50, 5);
            translate(50, 0);
        }
        popMatrix();
        translate(0, 50);
        y += 50;
    }
}
