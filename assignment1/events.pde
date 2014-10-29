//--------------------- Keypress Events -----------------

void keyPressed(){
  if(status == 1){
    if(keyCode == LEFT){
      P1.player_speed = -3f;  
    }
    
    if(keyCode == RIGHT){
      P1.player_speed = 3f;    
    }
  }
}


//-------------------- Key Release Events ---------------
void keyReleased(){
  if(status == 1){
    if(keyCode == LEFT || keyCode == RIGHT){
      P1.player_speed = 0f;
    }
  }
}
