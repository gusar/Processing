class Player{

   float speed = 0f;
   float X1;
   float Y1;
   float X2;
   float Y2;
   int side = 70;
   color orange = color(255,128,0);

   int score;
   int lives;
   int ammo;
  
   Player() {
      X1 = midX;
      Y1 = height-side-10;
      X2 = X1+side;
      Y2 = Y1+side;
      score = 0;
      lives = 5;
      ammo = 0;
   }
    
   void draw() {
      // fill(orange);
      
      // Restrict player position
      if((speed<0 && X1<=0) || (speed>0 && X1>=(width-side))) {
         speed = 0;
      }
        
      // Update player position
      // rect(X1+=speed, Y1, side, side);
      image(player_sprite, X1+=speed, Y1);
      X2 += speed;
   }

   // Update player stats
   void pstats(String s){
      if     (s == "addScore") score++;
      else if(s == "addLife") lives++;
      else if(s == "deductLife") lives--;
      hit = false;
   }
}
