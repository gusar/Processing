void setup()
{
  size(500, 500);
}
int i = 50;
int speed = 3;
void draw()
{
  background(0);
  fill(i, -i, i);
  stroke(i, i, i);
  ellipse(i, 225, 100, 100); 
  if(i>449 || i<50){
    speed *= -1;
  }
  i += speed;

}
