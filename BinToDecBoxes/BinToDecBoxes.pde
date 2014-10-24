int size = 16;
boolean[] bytes = new boolean[size];
boolean[] toggle = new boolean[size];
int centX, centY;
float start_point = 70;
float box_side;
float x,y;
int i, ret;
int io = 0;


public void setup()
{
  size(1000, 400);
  centX = width / 2;
  centY = height / 2;
  box_side = (width-start_point*2) / bytes.length;  
  for(i = 0; i < size; i++){
    toggle[i] = false;
  }
}

public void draw()
{
  background(46,46,46);
  stroke(255);
  
  for(i = 0; i < bytes.length; i++){
    
    x = start_point + box_side * i;
    y = centY - box_side/2;
    
    if(toggle[i] == true){
      fill(255,128,0);
      io = 1;
    }
    else{
      fill(169,208,245);
      io = 0;
    }
    rect(x, y, box_side, box_side);
    
    fill(0);
    text(io, x+box_side/2-4, y+box_side/2+4);
  }
  
  int number = binaryToDecimal(bytes);

  fill(255);
  text(number, centX, 100);
}

int binaryToDecimal(boolean[] bytes)
{
  ret = 0;
  for(i = 0; i < size; i++){
    if(toggle[i] == true){
      ret = ret + (int)pow(2,size-1-i);
    }
  }
  return ret;
}

void mousePressed(){
  
  float left_bound = start_point;
  float right_bound = left_bound + box_side * size;
  float high_bound = centY - box_side/2;
  float low_bound = high_bound + box_side;
  
  if(mouseX > left_bound && mouseX < right_bound 
  && mouseY > high_bound && mouseY < low_bound){
    float bla = start_point;
    int c = -1;
    while(mouseX > bla){
      bla += box_side;
      c++;
    }
      
    if(toggle[c] == false){
      toggle[c] = true;
    }
    else{
      toggle[c] = false;
    }
  }
}
