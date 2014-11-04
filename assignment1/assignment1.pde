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
Level level;
Player P1;
Queue queue;



//----------------------- Draw -------------------------
void draw(){
   if(status == 0){
      menu.draw_main_menu();
   }
  
  // Initialize a level, player, objects
   else if(status == 1){
      if(inMenu){
      level = new Level();
      P1 = new Player();
      queue = new Queue(30);
      inMenu = false;
    }
    
   // Update player position
   P1.draw();
    
   if(tick){
      queue.add();
      tick = false;
   }

   move_objects();
   tick_counter();  
  }
}

