// --------------- Make sure the right music plays ---------------
void play_music() {
	if(status == 0 || status == 3) {
		if(!ambient_menu.isPlaying()) {
	      ambient_menu.rewind();
	      ambient_menu.play();
	   }
		if(ambient_gameover.isPlaying()) {
			ambient_gameover.pause();
			ambient_gameover.rewind();
		}
		if(ambient_level.isPlaying()) {
			ambient_level.pause();
         ambient_level.rewind();
      }
	
   }

   else if(status == 1) {
   	if(!ambient_level.isPlaying()) {
      	ambient_level.rewind();
      	ambient_level.play();
      }
      if(ambient_gameover.isPlaying()) {
			ambient_gameover.pause();
			ambient_gameover.rewind();
		}
		if(ambient_menu.isPlaying()) {
			ambient_menu.pause();
         ambient_menu.rewind();
      }
   }

   else if(status == 2) {
   	if(!ambient_gameover.isPlaying()) {
	      ambient_gameover.rewind();
	      ambient_gameover.play();
	   }
      if(ambient_level.isPlaying()) {
			ambient_level.pause();
			ambient_level.rewind();
		}
		if(ambient_menu.isPlaying()) {
			ambient_menu.pause();
         ambient_menu.rewind();
      }
   }
}
	