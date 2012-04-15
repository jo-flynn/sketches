void setup(){
  size(1000,800,P3D);
  background(255);
  stroke(0);
  fill(255,200,200);
  
  float xstart = random(10);
  float ynoise = random(10);
  
  translate(width/2,height/2,0);
  
  for(float y = -(height/8); y <= (height/8); y+=1){
    ynoise += 0.02;
    float xnoise = xstart;
    for (float x = -(width/8); x<= (width/8); x+=1){
      xnoise += 0.23;
      drawPoint(x,y,noise(xnoise,ynoise));
    }
  } 
}

void drawPoint(float x, float y, float noiseFactor){
  fill(random(100,255),random(10,40), random(100,255));
  pushMatrix();
  translate(x * noiseFactor * 4, y*noiseFactor*5,0);
  ellipse(40,40,40,40);
//
  popMatrix();
}
