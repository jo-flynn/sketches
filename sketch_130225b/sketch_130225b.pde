import processing.opengl.*;
PImage img;

void setup() {
  img = loadImage("/Users/joe/Desktop/sam.png"); //change this to whatever the file name of your image is
  size(img.width,img.height, OPENGL);
}

void draw() {
  background(0);
  loadPixels();  
  for (int y = 0; y<height; y+=1 ) {
    for (int x = 0; x<width; x+=1) {
      int loc = x + y*img.width;
      float r = red (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      float av = ((r+g+b)/3.0);

    pushMatrix();
    translate(x,y);
      stroke(r,g,b);
      if (b > 0 && b < 255) {
        box(b,0,(av-255)/3); //change these values to alter the length. The closer to 0 the longer the lines. 
       // you can also try different shapes or even bezier curves instead of line();
      }
    popMatrix(); 
      
    }
  }
println("done");
noLoop();
}


