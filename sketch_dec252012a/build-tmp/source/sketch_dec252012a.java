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

public class sketch_dec252012a extends PApplet {



public void setup() {
    size(640, 480, OPENGL);
}

public void draw(){
    background(255);

    pushMatrix();
    translate(width*.3f, height*.3f, 0);
    rotateY(radians(frameCount));
    fill(255,0,0);
    cylinder(30,100,50);
    popMatrix();

    pushMatrix();
    translate(width*.7f, height*.5f, 0);
    rotateY(radians(frameCount));
    fill(255,255,0);
    cylinder(4,200,50);
    popMatrix();

    pushMatrix();
    translate(width*.3f, height*.7f, 0);
    fill(0, 255, 255);
    cylinder(3,200,30);
    popMatrix();
}

public void cylinder(int numSegments, float h, float r){
    float angle = 360.0f / (float)numSegments;

    // top
    beginShape();
    for (int i = 0; i< numSegments; i++){
        float x = calculateX(i, r, angle);
        float y = calculateY(i, r, angle);
        vertex(x, y, -h/2);
    }
    endShape(CLOSE);

    // side
    beginShape(QUAD_STRIP);
    for (int i = 0; i<numSegments + 1; i++){
        float x = calculateX(i, r, angle);
        float y = calculateY(i, r, angle);
        vertex(x,y,-h/2);
        vertex(x,y,h/2);
    }
    endShape();

    // bottom
    beginShape();
    for (int i = 0; i<numSegments; i++){
        float x = calculateX(i, r, angle);
        float y = calculateY(i, r, angle);
        vertex(x,y,h/2);
    }
    endShape(CLOSE);
}

public float calculateX(int i, float radius, float angle) {
    return cos(radians(angle*i))*radius;
}

public float calculateY(int i, float radius, float angle) {
    return sin(radians(angle*i))*radius;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_dec252012a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
