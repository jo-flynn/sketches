import processing.opengl.*;
float xstart, ynoise;
float xcoord = 0;
float ycoord = 0;

void setup(){
  size(1000,800, OPENGL);
  background(0);
  stroke(0);
  fill(255,255,255);
  //smooth();
  xstart = random(10);
  ynoise = random(10);
}

void drawPoint(float x, float y, float noiseFactor){
  float r, g, b;
  r = random(175,255);
  g = random(100,255);
  b = random(10,40);
  fill(r,g,b);
  stroke(r+4,g+4,b+4);
  pushMatrix();
  //translate(x * noiseFactor * 10, y*noiseFactor*12);
  rotateZ(x * noiseFactor * 4);
  rotateY(0.8);
  if(int(random(1,10)) % 2 == 0){
    box(2500,3000,4000);
  } else {
    box(random(25,200),random(25,200),random(25,200));
  }
  popMatrix();
}

void draw() {
 translate(random(0,width),random(0,height));
  
  //for(float y = -(height/2); y <= (height/2); y+=1){
    ynoise += 0.02;
    float xnoise = xstart;
    //for (float x = -(width/8); x<= (width/8); x+=1){
      xnoise += 0.33;
      ynoise += 0.33;
      drawPoint(xnoise,ynoise,noise(xnoise,ynoise));
    //}
  //} 
}
