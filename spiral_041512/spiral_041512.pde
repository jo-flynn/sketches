  float radius = 100;
  int centX = 250;
  int centY = 150;

void setup() {
  size(500,300);
  background(255);
  strokeWeight(0.5);
  smooth();
  frameRate(24);
  

  
  stroke(0,30);
  noFill();
  ellipse(centX, centY, radius*2, radius*2);
  
  stroke(20,50,70);
  
  
//  radius = 10;
//  float x, y;
//  float lastx = -999;
//  float lasty = -999;
//  
//  for (float ang = 0; ang <= 1440; ang += 5){
//    radius += 0.5;
//    float rad = radians(ang);
//    x = centX + (radius * cos(rad));
//    y = centY + (radius * sin(rad));
//    if (lastx > -999){
//      line(x,y,lastx,lasty);
//    }
//    lastx = x;
//    lasty = y;
//  }
}

void draw(){
  radius = 10;
  float x, y;
  for(int i = 0; i < 100; i++){
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    for(float ang = 0; ang <= 1440; ang +=5){
      radiusNoise += 0.05;
      radius += 0.5;
      float thisRadius = radius + (noise(radiusNoise)*200) - 100;
      
      float rad = radians(ang);
      x = centX + (thisRadius*cos(rad));
      y = centY + (thisRadius*sin(rad));

      if (lastx > -999){
        line(x,y,lastx,lasty);
      }

      lastx = x;
      lasty = y;
    }
  }
  saveFrame("spiral-####.png");  
}
