void setup() {
  size(500,100);
  background(255);
  strokeWeight(5);
  smooth();
  
  stroke(20,50,70);
//  float randx = random(width);
//  float randy = random(height);
//  line(20,50,randx,randy);

  int step = 10;
  float lastx = -999;
  float lasty = -999;
  float y = 50;
  int borderx = 20;
  int bordery = 10;
  
  for(int x=borderx; x<= (width-borderx); x+=step){
    y = bordery+random(height-2*bordery);
    if (lastx > -999){
      line(x,y,lastx,lasty);
    }
    lastx = x;
    lasty = y;
  }
}
