//--------------------- Keypress Events -----------------

void keyPressed(){
  if(status == 1){
    
    // Player movement
    if(keyCode == LEFT){
      P1.speed = -3f;  
    }
    
    if(keyCode == RIGHT){
      P1.speed = 3f;    
    }
    
    // Quit game
    if(key == 'q'){
      exit();
    }
  }
}


//-------------------- Key Release Events ---------------
void keyReleased(){
  if(status == 1){
    if(keyCode == LEFT || keyCode == RIGHT){
      P1.speed = 0f;
    }
  }
}
