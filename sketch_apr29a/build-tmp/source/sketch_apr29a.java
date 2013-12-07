import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_apr29a extends PApplet {



float xstart, xnoise, ynoise;

public void setup() {

  size(600,800, OPENGL);
  smooth();
  background(255);
  xstart = random(10);
  xnoise=xstart;
  ynoise = random(10);
  
  for (int y = 0; y <= height; y+=5){
    ynoise += 0.1f;
    xnoise = xstart;
    for (int x = 0; x <= width; x+=5) {
      xnoise += 0.1f;
      drawPoint(x,y,noise(xnoise,ynoise));
    }
  }
  saveRandomFileName();
}

public void drawPoint(float x, float y, float noiseFactor){
  pushMatrix();
  translate(x,y);
  rotate(noiseFactor * radians(540));
  float edgeSize = noiseFactor * 35;
  float grey = 150 + (noiseFactor * 120);
  float alph = 150 + (noiseFactor * 120);
  noStroke();
  fill(color(x+100,y-350,noiseFactor*400), alph);
  stroke(0,150);
  box(x);
  popMatrix();
}

// saves this image with a random filename.
public void saveRandomFileName(){
  save("downthemondrain-"+PApplet.parseInt(random(1000))+".png");  
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_apr29a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
