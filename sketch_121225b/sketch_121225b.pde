import processing.opengl.*;

float n;

void setup() {
    size(640, 480, OPENGL);
    n = 0.0f;
}

void draw() {
    n += 0.01;

    background(0);
    lights();

    noStroke();
    fill(255,128,0);

    pushMatrix();
    for (int i = 0; i<27; i++){
        for (int j = 0; j < 23; j++){
            renderBox(i,j,n);
        }
    }
    popMatrix();
}

void renderBox(int i, int j, float n){
  pushMatrix();
  fill(i*15,i*j,j*19);
  translate(i*25, j*25);
  rotateY(radians(i*10 + frameCount));
  rotateZ(radians(i*10 + frameCount));
  box(noise(i,j,n)*40);
  popMatrix();
}
