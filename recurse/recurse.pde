void setup() {
  size(800,800);
  background(0,0,0);
  smooth();
}

void draw() {
  for(int x = 0; x < width; x += 20) {
    for(int y = 0; y < height; y += 20) {
      fill(255);
      ellipse(x, y, x, y);
    }
  } 
}


