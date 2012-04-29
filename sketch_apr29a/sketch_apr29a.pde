import processing.opengl.*;

float xstart, xnoise, ynoise;

void setup() {

  size(600,800, OPENGL);
  smooth();
  background(255);
  xstart = random(10);
  xnoise=xstart;
  ynoise = random(10);
  
  for (int y = 0; y <= height; y+=5){
    ynoise += 0.1;
    xnoise = xstart;
    for (int x = 0; x <= width; x+=5) {
      xnoise += 0.1;
      drawPoint(x,y,noise(xnoise,ynoise));
    }
  }
  saveRandomFileName();
}

void drawPoint(float x, float y, float noiseFactor){
  pushMatrix();
  translate(x,y);
  rotate(noiseFactor * radians(540));
  float edgeSize = noiseFactor * 35;
  float grey = 150 + (noiseFactor * 120);
  float alph = 150 + (noiseFactor * 120);
  noStroke();
  fill(color(x+100,y-350,noiseFactor*400), alph);
  stroke(0,150);
  box(x);
  popMatrix();
}

// saves this image with a random filename.
void saveRandomFileName(){
  save("downthemondrain-"+int(random(1000))+".png");  
}
