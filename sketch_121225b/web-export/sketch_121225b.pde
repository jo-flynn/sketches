import processing.opengl.*;
import gifAnimation.*;

float n;
//GifMaker gifExport = new GifMaker(this, "export.gif");

void setup() {
    size(640, 480, OPENGL);
    n = 0.0f;


    // gifExport.setRepeat(0);                // make it an "endless" animation
    // gifExport.setTransparent(0,0,0);    // black is transparent
}

void draw() {
    hint(ENABLE_DEPTH_TEST);
    n += 0.01;

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

