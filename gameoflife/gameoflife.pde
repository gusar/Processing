/*Rules
 if cell is alive
 if < 2 neightbours dies
 if 2 or 3 survives
 if it has > 3 neighbours it dies
 if cell is dead
 if it has exactly 3 nieghbours it comes back to life
 */


/*
  Check neighbours
*/
int countNeighbours(int row, int col){
  int count = 0;

  //top left
  if ( (row > 0) && (col > 0) && (board[row-1][col-1])){
    count++;
  }

  //top
  if ( (row > 0) && board[row-1][col]){
    count ++;
  }

  //topright
  if ( (row > 0) && (col < (boardWidth -1)) && (board[row - 1][col + 1])){
    count++;
  }

  //middleleft
  if ((col > 0) && (board[row][col - 1])){
    count ++;
  }

  //middleright
  if ((col < (boardWidth - 1)) && board[row][col + 1]){
    count++;
  }

  //botleft
  if ((col > 0) && (row < (boardHeight-1)) && board[row + 1][col - 1]){
    count ++;
  }

  //bot
  if ((row < (boardHeight - 1 )) && (board[row + 1][col])){
    count ++;
  }

  //botright
  if ((col < (boardWidth - 1 )) && (row < (boardHeight - 1)) && board[row + 1][col + 1]){
    count ++;
  }

  return count;
}


/* 
  Randomise starting cells 
*/
void randomcell(){ 
  for ( int row = 0; row < boardHeight; row++){
    for ( int col = 0; col < boardWidth; col++){
      float r = random(0,1);
      if ( r > 0.5f){
        board[row][col] = true;
      }
    }
  }
}


/*
  Setup
*/
void setup(){
  frameRate(speed);
  size(800, 800);
  boardWidth = width / cellWidth;
  boardHeight = height / cellHeight;
  board = new boolean[boardHeight][boardWidth];
  boardbuffer = new boolean[boardHeight][boardWidth];
  pause = false;
 
  randomcell();
}


/* Initialize vars */
boolean pause;
boolean[][] board;
boolean[][] boardbuffer;
int cellWidth = 5;
int cellHeight = 5;
int boardWidth;
int boardHeight;
int speed = 20;
//int fps = 60;
//float ellapsed = 0.0f;


/*
  Put current board into boardBuffer
*/
void update(){

/*
  float toPass = 1.0f / (float)fps;
  ellapsed += 1.0f / 60.0f;

  if (ellapsed > toPass){
    ellapsed = 0.0f;
*/

    for ( int row = 0; row < boardHeight; row++){
      for ( int col = 0; col < boardWidth; col++){
        int count = countNeighbours(row, col);

        if ( board[row][col]){
          if (count < 2){
            boardbuffer[row][col] = false;
          } 
          
          else if ((count == 2) || (count == 3)){
            boardbuffer[row][col] = true;
          }
          
          else if (count > 3){
            boardbuffer[row][col] = false;
          }
        } 
        else{
          if (count == 3){
            boardbuffer[row][col] = true;
          }
        }
      }
    }
//}   
}


/* Draw */
void draw(){
  background(0);
  if(!pause){
    update();
  }

  for ( int row = 0; row < boardHeight; row++){
    for ( int col = 0; col < boardWidth; col++){
      board[row][col] = boardbuffer[row][col];
      int x = cellWidth * col;
      int y = cellHeight * row;

      if ( board[row][col]){
        fill(0, 255, 0);
        rect(x, y, cellWidth, cellHeight);
      } 
      else{
        fill(0);
      }
    }
  }
  
  /* Draw with mouse */
  if(pause && mousePressed){
    
  }
}


/*
  Clear screen
*/
void clearscreen(){
  println("ping");
  for(int row = 0; row < boardHeight; row++){
    for(int col = 0; col < boardWidth; col++){
      boardbuffer[row][col] = false;
      board[row][col] = false;
    }
  }
}


/*
  Pressed Key Events
*/
void keyPressed(){
  // Increase speed
  if(key == 'w'){
    frameRate(speed+=5);
    println("Speed: " + speed);
  }
  
  // Decrease speed
  if(key == 's' && speed > 5){
    frameRate(speed-=5);
    println("Speed: " + speed);
  }

/*
  // Alt speed up
  if(keyCode == UP){
     fps += 5;
  }

  //Alt speed down
  if(keyCode == DOWN){
    fps -= 5;
  }
*/  
  
  // Pause toggle
  if(key == ' '){
    pause = !pause;
  }

  // Clear board
  if(key == 'c'){
    clearscreen();
  }
  
  // Randomise
  if(key == 'r'){
    randomcell();
  }
}


/*
  Draw on the board
*/
void mousePressed(){
  
}