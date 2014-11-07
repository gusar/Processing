class Player {

// -------------------- Position variables --------------------------
   float X1;
   float Y1;
   float X2;
   float Y2;
   float speed_left;
   float speed_right;
   int side;

// ---------------------- Stat variables -----------------------------
   int score;
   int lives;
   int fuel;
   int score_acc;
   float statX;
   float statY;
   int counter;
   boolean speedup;
  
// ------------------- Initialise a new player -----------------------
   Player() {
      speed_left = 0f;
      speed_right = 0f;
      side = 70;
      X1 = midX;
      Y1 = height-side-10;
      X2 = X1+side;
      Y2 = Y1+side;
      score = 0;
      lives = 5;
      fuel = 50;
      score_acc = 0;
      speedup = false;
   }

// ----------------------- Draw player ---------------------------------
   void draw() {   
      // Restrict player position
      if((speed_left<0 && X1<=0) || (speed_right>0 && X1>=(width-side))) {
         speed_left = 0f;
         speed_right = 0f;
      }
        
      // Update player position
      image(player_sprite, X1+=(speed_left+speed_right), Y1);
      X2 += (speed_left+speed_right);
   }

// ---------------------- Update player stats --------------------------
   void pstats(String s) {
      if(hit) {
         if(s == "addScore") {
            charge.play();
            charge.rewind();
            score_acc++;
            score++;
            fuel += 3;

            // add a life for each 4 points
            if(score_acc > 4) {
               health.play();
               health.rewind();
               lives++;
               score_acc = 0;
               speedup = true;
            }
         }

         // If player collides with enemy
         else if(s == "deductLife") {
            bang.play();
            bang.rewind();
            lives--;
         }
      }
      hit = false;

      // Gameover if lives are zero
      if(lives < 1) {
         status = 2;
      }
   }

// ---------------------- Draw player stats ----------------------------
   void draw_stats() {
      statX = 30;
      statY = 30;
      fill(menu.main_hover, 100);
      rect(statX,statY,98,76,10);
      fill(230,230,230,200);
      textSize(17);
      textAlign(LEFT);
      text("Score:  "+score, statX+=10, statY+=22);
      text("Lives:   "+lives, statX, statY+=22);
      text("Fuel:   "+fuel, statX, statY+=22);
   }

   // Decrement fuel until empty
   void fuel_counter() {
      if(fuel<1) {
         status = 2;
      }
      if(counter<1){
         fuel--;
         counter = 120;
      }
      counter--;
   }
}
