public class Game_Menu{

// ----------------- Color and Button variables ------------------------
   // color background_color = color(0,150,136,255);
   color main_button = color(255,179,0,255);
   color main_hover = color(255,124,0,255);

   Button B1, B2, B3, B4, B5;

// -------------------- Initialise game menu ---------------------------
   Game_Menu() {
      B1 = new Button(main_button, main_hover);
      B2 = new Button(main_button, main_hover);
      B3 = new Button(main_button, main_hover);
      B4 = new Button(main_button, main_hover);
      B5 = new Button(main_button, main_hover);
   }

//  --------------------- Draw main menu -------------------------------
   void draw_main_menu() {
     // ambient.setGain(-20);
      if(!ambient_menu.isPlaying()) {
         ambient_menu.rewind();
         ambient_menu.play();
      }

      image(menu_background,0,0);
      noStroke();
      B1.draw_button(midX+midX/1.8f, midY-midY/2.5f, "Start");    
      B2.draw_button(midX+midX/1.8f, midY, "Level");
      B3.draw_button(midX+midX/1.8f, midY+midY/2.5f, "Exit");
   }
}
