import processing.opengl.*;

void setup() {
    size(640, 480, OPENGL);
}

void draw(){
    background(255);

    pushMatrix();
    translate(width*.3, height*.3, 0);
    rotateY(radians(frameCount));
    fill(255,0,0);
    cylinder(30,100,50);
    popMatrix();

    pushMatrix();
    translate(width*.7, height*.5, 0);
    rotateY(radians(frameCount));
    fill(255,255,0);
    cylinder(4,200,50);
    popMatrix();

    pushMatrix();
    translate(width*.3, height*.7, 0);
    fill(0, 255, 255);
    cylinder(3,200,30);
    popMatrix();
}

void cylinder(int numSegments, float h, float r){
    float angle = 360.0 / (float)numSegments;

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

float calculateX(int i, float radius, float angle) {
    return cos(radians(angle*i))*radius;
}

float calculateY(int i, float radius, float angle) {
    return sin(radians(angle*i))*radius;
}