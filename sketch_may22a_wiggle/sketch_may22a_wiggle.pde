import processing.opengl.*;

float xstart, xnoise, ynoise;

void setup() {

  size(600,800, OPENGL);
  smooth();
  background(0);
  xstart = random(10);
  xnoise=xstart;
  ynoise = random(10);
}

void drawPoint(){
}

// saves this image with a datebased filename so i don't overwrite stuff
void saveRandomFileName(){
  save("downthemondrain-"+year()+month()+day()+hour()+minute()+second()+".png");  
}
