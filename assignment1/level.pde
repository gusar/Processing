// -------------- Manage level background ------------------
class Level{
  
   Level(){
   }

   void draw() {
      if(!ambient_level.isPlaying()) {
         ambient_level.rewind();
         ambient_level.play();
      }

      image(level_background,0,0);
   }
}
