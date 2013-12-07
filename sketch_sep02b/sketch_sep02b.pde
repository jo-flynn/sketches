import processing.opengl.*;

float xstart, xnoise, ynoise;

void setup(){
  size(1200,1200, OPENGL); 
  smooth();
  background(0);
  color(255);
  
  xstart = random(10);
  xnoise = xstart;
  ynoise = random(10);
  
  for (int y = 0; y <= height; y+=20){
    ynoise += 0.1;
    xnoise = xstart;
    for (int x = 0; x <= width; x+=20){
      //pushMatrix();
      translate(xnoise,ynoise);
      box(x,y,100);
      //popMatrix();
    }
  }
}
