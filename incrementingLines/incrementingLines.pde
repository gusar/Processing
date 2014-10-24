void setup(){
  size(500,500);
}

int centerX = 250;
int centerY = 250;

void draw(){
  background(0);
  stroke(215,223,1);
  
  int x = centerX;
  
  for (x = 0; x <= width; x+=10){
    line(x,height,centerX, centerY);
  }
  
  float interval = 1;
  float y = centerY;  
  
  while(y < height){
    line(0, y, width, y);
    y += interval;
    interval += 2;
  }
}
