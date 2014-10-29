//--------------------- Setup --------------------------
void setup(){
  frameRate(120);
  size(800,800);
  midX = width / 2;
  midY = height / 2;
  loadFont("LiberationMono-48.vlw");
  font = createFont("LiberationMono-48.vlw",32,true);
  textFont(font, 32);
  textSize(32);
  textAlign(CENTER);
  menu.init_menu();
}


//-------------------- Load Objects --------------------
Game_Menu menu = new Game_Menu();
Level newLevel = new Level();
Player P1;


//------------------ Global Variables ------------------
PFont font;
int midX;
int midY;
int game_status;
color button_color, button_hover_color, level_color;
boolean mouse_hover = false;
int status = 0;
boolean inMenu = true;


//----------------------- Draw -------------------------
void draw(){
  if(status == 0){
    menu.draw_main_menu();
  }
  
  else if(status == 1){
    if(inMenu){
      newLevel.set_level();
      P1 = new Player();
      P1.init_player();
      inMenu = false;
    }
    
    P1.draw_player();
  }
}

