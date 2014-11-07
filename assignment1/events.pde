//--------------------- Keypress Events -----------------

void keyPressed() {
   if(status == 1) {
    
      // Player movement
      if(keyCode == LEFT || key == 'a') {  
         P1.speed_left = -3.5f;  
      }
    
      if(keyCode == RIGHT || key == 'd') {
         P1.speed_right = 3.5f;    
      }
   }

   if(status != 0) {
      // Pause
      if(key == 'p') {
         temp_status = status;
         status = pause_status;
         pause_status = temp_status;

         if(ambient_level.isPlaying()) {
            ambient_level.pause();
         }
         else {
            ambient_level.play();
         }
      }

      // Quit game
      if(key == 'q') {
         temp_status = status;
         status = exit_status;
         exit_status = temp_status;
      }
   }
}

//-------------------- Key Release Events ---------------
void keyReleased() {
   if(status == 1) {
      if(keyCode == LEFT || key == 'a') {
         P1.speed_left = 0f;
      }
      if(keyCode == RIGHT || key == 'd'){
         P1.speed_right = 0f;
      }
   }
}

// ------------------- Mouse click actions ----------------
void mousePressed() {

   // Start a new game
   if(menu.B1.mouse_hover) {
      status = 1;
   }

   else if(menu.B2.mouse_hover) {
      status = 3;
   }

   // Exit game
   else if(menu.B3.mouse_hover) {
      exit();
   }

   // Easy, Medium and Hard difficulties
   if(menu.B6.mouse_hover) {
      minmax_e = new float[] {1,3};
      minmax_c = new float[] {1,2};
      status = 1;
      menu.B6.mouse_hover = false;
   }
   else if(menu.B7.mouse_hover) {
      minmax_e = new float[] {1,5};
      minmax_c = new float[] {1,4};
      status = 1;
      menu.B7.mouse_hover = false;
   }
   else if(menu.B8.mouse_hover) {
      minmax_e = new float[] {3,6};
      minmax_c = new float[] {3,5};
      status = 1;
      menu.B8.mouse_hover = false;
   }
}