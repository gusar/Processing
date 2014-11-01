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


//------------------ Global Variables ------------------
PFont font;
int midX;
int midY;
int game_status;
boolean mouse_hover = false;
int status = 0;
boolean inMenu = true;



//-------------------- Load Objects --------------------
Game_Menu menu = new Game_Menu();
Level newLevel = new Level();
Player P1;
Projectile[] proj;
Queue queue = new Queue();



//----------------------- Draw -------------------------
void draw(){
  if(status == 0){
    menu.draw_main_menu();
  }
  
  else if(status == 1){
    // Initialize a level
    if(inMenu){
      newLevel.set_level();
      P1 = new Player();
      P1.init();
      inMenu = false;
      queue.init_enemies();
    }
    
    // Update player position
    P1.draw_player();
    
    if(tick){
      queue.add();
    }
    // Manage projectile behaviour
    for(int i = 0; i<proj.length; i++){
      
      hit_detect(i);
      enemy1(i);
    }
    tick_counter();
    
    
    
  }
}

