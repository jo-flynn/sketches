import processing.opengl.*;

float xstart, xnoise, ynoise;

void setup() {

  size(600,800, OPENGL);
  smooth();
  background(0);
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
  rotate(noiseFactor * tan(radians(540)));
  float edgeSize = noiseFactor * 35;
  float grey = 150 + (noiseFactor * 120);
  float alph = 150 + (noiseFactor * 120);
  noStroke();
  fill(color(x+100,y-350,noiseFactor*400), alph);
  stroke(0,150);
  rect(x,y,edgeSize,20);
  popMatrix();
}

// saves this image with a datebased filename so i don't overwrite stuff
void saveRandomFileName(){
  save("downthemondrain-"+year()+month()+day()+hour()+minute()+second()+".png");  
}
