class Player{

    float speed = 0f;
    float X1;
    float Y1;
    float X2;
    float Y2;
    int side = 50;
    
  
    void init(){
      X1 = midX;
      Y1 = height - side;
      X2 = X1 + side;
      Y2 = Y1 + side;
    }
    
    void draw_player(){
      background(newLevel.level_color);
      fill(0);
      
      // Restrict player position
      if((speed<0 && X1<=0) || (speed>0 && X1>=(width-side))){
          speed = 0;
        }
        
      // Update player position
      rect(X1+=speed, Y1, side, side);
      X2 += speed;
    }
}
