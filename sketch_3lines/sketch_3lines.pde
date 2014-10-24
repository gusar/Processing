void setup(){
  size(500,500);
}

void draw(){
  float x = 50;
  float y = 50;
  float a = 50;
  float b = 150;
  
  background(0);
  stroke(255);
  
  while(x <= 200){
    line(x, y, a, b);
    x += 50;
    a += 50;
  }
  
}
