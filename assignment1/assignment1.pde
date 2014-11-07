/* Check out the README file for details */

import ddf.minim.*;

//--------------------- Setup --------------------------
void setup() {
   // Set fps, window sizes and fonts
   frameRate(120);
   size(1000,1000);
   midX = width / 2;
   midY = height / 2;
   loadFont("LiberationMono-48.vlw");
   font = createFont("LiberationMono-48.vlw",32,true);
   textFont(font, 32);

   // Load images
   menu_background = loadImage("astronaut2.jpg");
   level_background = loadImage("space.jpg");
   end_background = loadImage("asteroids.jpg");
   player_sprite = loadImage("redfighter1.gif");
   enemy_sprite = loadImage("enemy.gif");
   collectible_sprite = loadImage("orb.gif");

   // Load sound files
   minim = new Minim(this);
   ambient_menu = minim.loadFile("Mercurius_-_Ariane_partie_4.mp3");
   ambient_level = minim.loadFile("pure___natural_-_yellow_strange_.mp3");
   ambient_gameover =  minim.loadFile("Quetzalbwattio_-_MatizElectrico.mp3");
   bang = minim.loadFile("bang.wav");
   charge = minim.loadFile("charge.wav");
   health = minim.loadFile("health.wav");
}

//------------------ Global Variables ------------------
Minim minim;
AudioPlayer ambient_menu;
AudioPlayer ambient_level;
AudioPlayer ambient_gameover;
AudioPlayer bang;
AudioPlayer charge;
AudioPlayer health;
PImage enemy_sprite;
PImage player_sprite;
PImage collectible_sprite;
PImage menu_background;
PImage end_background;
PImage level_background;
PFont font;
int midX;
int midY;
int status = 0;
int pause_status;
int exit_status;
int temp_status;
boolean inMenu = true;
boolean hit = false;
float[] minmax_e;
float[] minmax_c;

//-------------------- Load Objects --------------------
Game_Menu menu = new Game_Menu();
Level level;
Player P1;
Queue enemy;
Queue collectible;

//----------------------- Draw -------------------------
void draw() {

   // Draw pause
   if(status == 8) {
      draw_pause();
   }

   // Exit to menu confirmation
   else if(status == 9) {
      quit_dialogue();
   }

   // Draw menu
   else if(status == 0 || status == 3) {
      play_music();
      inMenu = true;
      minmax_e = new float[] {1,5};
      minmax_c = new float[] {1,4};
      pause_status = 8;
      exit_status = 9;
      temp_status = 0;
      menu.draw_main_menu();
   }

   // Gameover
   else if(status == 2) {
      play_music();
      draw_gameover();
   }
  
   // Initialize a level, player, objects
   else if(status == 1) {
      if(inMenu) {
         play_music();
         level = new Level();
         P1 = new Player();
         enemy = new Queue(60, 50, minmax_e, 1);
         collectible = new Queue(30, 20, minmax_c, 2);
         inMenu = false;
      }
    
      // Draw level and objects, update player stats.
      level.draw();
      P1.draw();
      P1.fuel_counter();
      move_objects(enemy);
      P1.pstats("deductLife");
      move_objects(collectible);
      P1.pstats("addScore");
      enemy.spawn_counter(30);
      collectible.spawn_counter(160);
      P1.draw_stats();
   }
}