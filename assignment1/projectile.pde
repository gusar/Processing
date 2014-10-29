class Projectile{
  
  int side = 50;
  float speed = 0;
  float X1;
  float Y1 = -side;
  float X2;
  float Y2;
  boolean active = false;
  
  void init(float s, float x){
    speed = s;
    X1 = x;
    X2 = X1 + side;
    Y2 = Y1 + side;
    active = true;
  }
  
  void run(){  
    if(Y1 > height){
      speed = 0;
    }
    
    rect(X1, Y1+=speed, side, side);
    Y2 += speed;
  }
}
