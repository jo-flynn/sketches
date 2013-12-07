import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.opengl.*; 
import gifAnimation.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_121225b extends PApplet {




float n;
//GifMaker gifExport = new GifMaker(this, "export.gif");

public void setup() {
    size(640, 480, OPENGL);
    n = 0.0f;


    // gifExport.setRepeat(0);                // make it an "endless" animation
    // gifExport.setTransparent(0,0,0);    // black is transparent
}

public void draw() {
    hint(ENABLE_DEPTH_TEST);
    n += 0.01f;

    background(0);
    lights();

    noStroke();
    fill(255,128,0);

    pushMatrix();
    for (int i = 0; i<17; i++){
        for (int j = 0; j < 13; j++){
            pushMatrix();
            fill(i*15,0,j*19);
            translate(i*40, j*40);
            rotateY(radians(i*10 + frameCount));
            rotateZ(radians(i*10 + frameCount));
            box(noise(i,j,n)*40);
            popMatrix();
        }
    }
    popMatrix();
    //rect(320,240,200,200);
    // gifExport.setDelay(15);
    // gifExport.addFrame();
}

// void mousePressed() {
//     gifExport.finish();                    // write file
// }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_121225b" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
