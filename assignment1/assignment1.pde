//--------------------- Setup --------------------------
void setup(){
   frameRate(120);
   size(1000,1000);
   midX = width / 2;
   midY = height / 2;
   loadFont("LiberationMono-48.vlw");
   font = createFont("LiberationMono-48.vlw",32,true);
   textFont(font, 32);
   textSize(32);
   textAlign(CENTER);
   menu_background = loadImage("astronaut2.jpg");
   level_background = loadImage("nebula.jpg");
   player_sprite = loadImage("redfighter1.gif");
}


//------------------ Global Variables ------------------
PImage player_sprite;
PImage menu_background;
PImage level_background;
PFont font;
int midX;
int midY;
int game_status;
boolean mouse_hover = false;
int status = 0;
boolean inMenu = true;
color black = color(46,46,46);
color salmon = color(250,88,88);
boolean hit = false;

//-------------------- Load Objects --------------------
Game_Menu menu = new Game_Menu();
Level level;
Player P1;
Queue enemy;
Queue collectible;


//----------------------- Draw -------------------------
void draw() {
   if(status == 0) {
      menu.draw_main_menu();
   }
  
  // Initialize a level, player, objects
   else if(status == 1) {
      if(inMenu) {
      level = new Level();
      P1 = new Player();
      enemy = new Queue(30, 50, random(1,4), black);
      collectible = new Queue(10, 20, random(2,3), salmon);
      inMenu = false;
      }
    
      level.draw();

      // Update player position
      P1.draw();

      move_objects(enemy);
      P1.pstats("deductLife");
      move_objects(collectible);
      P1.pstats("addScore");
      enemy.spawn_counter(40);
      collectible.spawn_counter(200);
   }
}