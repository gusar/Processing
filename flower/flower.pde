int centX;
int centY;
float R = 650;

void setup(){
  size(800,800);
  centX = width/2;
  centY = height/2;
}

void draw(){
  background(17, 198, 150);
  stroke(8,138,104);
  fill(216,216,216);

  float segments = 6;
  float thetaInc = TWO_PI / segments;
  float theta = 0;
  float radius = R/4;
  
  ellipse(centX, centY, R, R);
  
  while (theta < TWO_PI){
    fill(8,138,104);
    float x; 
    float y;
    x = centX + sin(theta) * radius;
    y = centY + cos(theta) * radius;
    ellipse(x, y, R/3.5, R/3.5);
    theta += thetaInc;
  }
  
  ellipse(centX, centY, R/3, R/3);
  
  fill(190,0,47);
  ellipse(centX, centY, R/4, R/4);
}
