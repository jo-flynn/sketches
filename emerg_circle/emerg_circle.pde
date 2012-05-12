int _num = 10;
Circle[] _circArr = {};
void setup(){
  size(500,300);
  background(255);
  smooth();
  strokeWeight(1);
  fill(150,50);
  drawCircles();
}

void draw () {
  background(255);
  for (int i=0; i < _circArr.length; i++){
    Circle thisCirc = _circArr[i];
    thisCirc.updateMe();
  }
}

void mouseReleased() {
  drawCircles();
}

void drawCircles(){
  for (int i=0; i< _num; i++){
      Circle thisCirc = new Circle();
      thisCirc.drawMe();
      _circArr = (Circle[])append(_circArr,thisCirc);
  }
}

class Circle {
  float x, y, radius, alph, xmove, ymove;
  color linecol, fillcol;
  
  Circle() {
    x = random(width);
    y = random(height);
    radius = random(100) + 10;
    linecol = fillcol = color(random(255), random(255), random(255));
    alph = random(255);
    xmove = random(10) - 5;
    ymove = random(10) - 5;
  }
  
  void drawMe(){
      noStroke();
      fill(fillcol,alph);
      ellipse(x,y,radius*2, radius*2);
      stroke(linecol,150);
      ellipse(x,y,10,10);
  }
  
  void updateMe() {
    x += xmove;
    y += ymove;
    x = x > (width+radius) ? 0 - radius : x;
    x = x < (0 - radius) ? width+radius : x;
    y = y > (height+radius) ? 0 - radius : y;
    y = y > (height+radius) ? height+radius : y;
    
    boolean touching = false;
    
    for (int i = 0; i < _circArr.length; i++) {
      Circle otherCirc = _circArr[i];
      if (otherCirc != this) {
        float dis = dist(x,y,otherCirc.x, otherCirc.y);
        float overlap = dis - radius - otherCirc.radius;
        if (overlap > 0) {
          float midx, midy;
          midx = (x + otherCirc.x)/2;
          midy = (y + otherCirc.y)/2;
          stroke(0,100);
          noFill();
          overlap *= -1;
          ellipse(midx, midy, overlap,overlap);
        }        
        if ((dis - radius - otherCirc.radius) < 0){
          touching = true;
          break;
        }
      }
    }
    if (touching) { 
      if (alph > 0) { alph--; }
    } else {
      if (alph < 255) { alph += 2; }
    }
    //drawMe();
  }
}
