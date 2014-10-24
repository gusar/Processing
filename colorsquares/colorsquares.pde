void setup()
{
  centX = width/2;
  centY = height/2;
  background(0);
  stroke(255,255,255);
  size(500, 500);
  line(0,height/2, width,height/2);
  line(width/2,0, width/2,500);
}  

void draw()
{
  rect(0,0,250,250);
  fill(100,255,100);
}
