// -------------- Manage level background ------------------
class Level{

   Level(){
   }

// --------------------- Draw level ------------------------
   void draw() {
      image(level_background,0,0);

      // Increase min and max speed of objects every 5 score points
      if(P1.speedup) {
         minmax_e[0]++;
         minmax_e[1]++;
         minmax_c[0]++;
         minmax_c[1]++;
         P1.speedup = false;
      }
   }
}
