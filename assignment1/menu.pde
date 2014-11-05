public class Game_Menu{

   color background_color = color(0,150,136,255);
   color main_button = color(255,179,0,255);
   color main_hover = color(255,124,0,255);
   Button B1;
   Button B2;
   Button B3;

   Game_Menu() {
      B1 = new Button(main_button, main_hover);
      B2 = new Button(main_button, main_hover);
      B3 = new Button(main_button, main_hover);
   }

   void draw_main_menu() {
      // background(background_color);
      image(menu_background,0,0);
      noStroke();
      B1.draw_button(midX, midY-midY/2.5f, "Start");    
      B2.draw_button(midX, midY, "Level");
      B3.draw_button(midX, midY+midY/2.5f, "Exit");
   }
}
