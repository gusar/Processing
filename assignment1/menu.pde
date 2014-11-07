public class Game_Menu{

// ----------------- Color and Button variables ------------------------
   color main_button = color(255,179,0,255);
   color main_hover = color(255,124,0,255);

   Button B1, B2, B3, B4, B5, B6, B7, B8;

// -------------------- Initialise game menu ---------------------------
   Game_Menu() {
      B1 = new Button(main_button, main_hover);
      B2 = new Button(main_button, main_hover);
      B3 = new Button(main_button, main_hover);
      B4 = new Button(main_button, main_hover);
      B5 = new Button(main_button, main_hover);
      B6 = new Button(main_button, main_hover);
      B7 = new Button(main_button, main_hover);
      B8 = new Button(main_button, main_hover);
   }

//  --------------------- Draw main menu -------------------------------
   void draw_main_menu() {
      image(menu_background,0,0);

      if(status == 3) {
         B6.draw_button(midX+midX/1.8f, midY-midY/2.5f, "Easy");    
         B7.draw_button(midX+midX/1.8f, midY, "Medium");
         B8.draw_button(midX+midX/1.8f, midY+midY/2.5f, "Hard");
      }
      else {
         B1.draw_button(midX+midX/1.8f, midY-midY/2.5f, "Start");    
         B2.draw_button(midX+midX/1.8f, midY, "Level");
         B3.draw_button(midX+midX/1.8f, midY+midY/2.5f, "Exit");
      }
   }
}
