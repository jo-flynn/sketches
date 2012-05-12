import processing.opengl.*;

int radius = 100;

void setup(){
  size(500,300,OPENGL);
  background(255);
  stroke(0);
}

void draw() {
  background(255);
  
  translate(width/2, height/2, 0);
  
  float s,t,lastx,lasty,lastz;
  s = t = lastx = lasty = lastz = 0;
  
  while(t<180){
    pushMatrix();
    s += 18;
    t += 1;
    float radianS = radians(s);
    float radianT = radians(t);
    
    float thisx = 0 + (radius * cos(radianS) * sin(radianT));
    float thisy = 0 + (radius * sin(radianS) * sin(radianT));
    float thisz = 0 + (radius * cos(radianT));
    
    if(lastx != 0){
      line(thisx, thisy, thisz, lastx, lasty, lastz);
    }
    lastx = thisx;
    lasty = thisy;
    lastz = thisz;

    popMatrix();
  }
}
