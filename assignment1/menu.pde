public class Game_Menu{
  
  Button B1 = new Button();
  Button B2 = new Button();
  Button B3 = new Button();
  
  color button_color = color(255,179,0,255);
  color button_hover_color = color(255,124,0,255);
  color background_color = color(0,150,136,255);
  
  void init_menu(){
    B1.set_button_color(button_color, button_hover_color);
    B2.set_button_color(button_color, button_hover_color);
    B3.set_button_color(button_color, button_hover_color);
  }

  void draw_main_menu(){
    background(background_color);
    noStroke();
    B1.draw_button(midX, midY-midY/2.5f, "Start");    
    B2.draw_button(midX, midY, "Level");
    B3.draw_button(midX, midY+midY/2.5f, "Exit");
  }
}
