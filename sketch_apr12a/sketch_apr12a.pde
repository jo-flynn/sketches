void setup(){
  size(1000,1000,P3D);
  background(255);
  stroke(0,50);
  fill(255,50,50,100);
  float xstart = random(10);
  float ynoise = random(10);
  translate(width/2, height/2,0);
  
  for(float y = -(height/8); y <= (height/8); y+=3){
    ynoise += 0.02;
    float xnoise = xstart;
    for (float x = -(width/8); x <= (width/8); x+=3){
      xnoise += 0.023;
      drawPoint(x,y,noise(xnoise,ynoise)); n n
    }
  }
}

void drawPoint(float x, float y, float noiseFactor){
  fill(255);
  stroke(random(10,50), 50);
  pushMatrix();
  translate(x * noiseFactor * 4, y * noiseFactor * 5, -y);
  float edgeSize = noiseFactor * 26;
  box(0, 0, edgeSize*5);//, edgeSize*2);
  popMatrix();
}
