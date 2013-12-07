import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_131202_tiles extends PApplet {



public void setup() {
    size(800,800, OPENGL);
    smooth();
    background(255);
    fill(0, 182, 130);
    frameRate(60);
    noStroke();
}

public void draw() {
    background(255);
    translate(0, 25);
    int y = 25;

    while (y <= height) {
        pushMatrix();
        for (int i = 25; i <= width; i += 25) {
            fill(0, millis() * 0.001f * TWO_PI / 10.0f, millis() * 0.001f * TWO_PI / 10.0f);
            rotateX(millis() * 0.001f * TWO_PI / 10.0f);
            box(50, 50, 5);
            translate(50, 0);
        }
        popMatrix();
        translate(0, 50);
        y += 50;
    }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_131202_tiles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
