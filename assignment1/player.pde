class Player{

    float player_speed = 0f;
    float playerX;
    float playerY;
    int player_side = 50;
  
    void init_player(){
      playerX = midX;
      playerY = height-player_side;
      println(width);
    }
    
    void draw_player(){
      background(level_color);
      fill(0);
      
      // Restrict player position
      if((player_speed<0 && playerX<=0) || (player_speed>0 && playerX>=(width-player_side))){
          println("ping");
          player_speed = 0;
        }
        
      // Update player position
      rect(playerX+=player_speed, playerY, player_side, player_side);
    }
}
