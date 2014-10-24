//Lab2
//OOP

// Size definitions
int side = 500;
float thirtyFive = side*0.35;
float thirty = side*0.30;

boolean pressed = false;
boolean inbounds = false;
boolean toggle = true;

// Ball definitions
float ballsize = 20;
float ballx = 50;
float bally = 13;
float x = 3;
float y = 3;
boolean x1,x2,x3,x4,y1,y2,y3,y4;

// Create shape objects
PShape button;

// Initialization
void setup() {  
  frameRate(120);
  size(side, side, P2D);
  button = createShape(RECT,thirtyFive,thirtyFive,thirty,thirty);
  button.setStroke(false);
}

void bounce() {
  fill(side%ballx,side%bally,random(255));
}

void draw() {
  // Update background
  background(46,46,46);
                      
  // Update coords of the ball 
  x1 = ballx < ballsize/2;
  x2 = ballx > thirtyFive-ballsize/2;
  x3 = ballx < side-thirtyFive+ballsize/2;
  x4 = ballx > side-ballsize/2;
  
  y1 = bally < ballsize/2;
  y2 = bally > thirtyFive-ballsize/2;
  y3 = bally < side-thirtyFive+ballsize/2;
  y4 = bally > side-ballsize/2;
  
  // Bounce off outer walls
  if(y1 || y4) {
    y *= -1;
    bounce();
  }
  else if(x1 || x4) {
    x *= -1;
    bounce();
  }
  
  // Bounce off button walls
  else if(x2 && y2 && x3 && y3) {
    if(toggle) {
      y *= -1;
      toggle = false;
      bounce();
    }
    else {
        x *= -1;
      toggle = true;
      bounce();
    }
  }

  // Move the ball 1 unit
  
  ellipse(ballx,bally,ballsize,ballsize); 
  ballx += x;
  bally += y;
  
  // Draw the button
  shape(button);
  
  // Change colour of the button to blue if cursor is on it
  if((mouseX >= thirtyFive) && (mouseX <= thirtyFive+thirty)
    &&(mouseY >= thirtyFive) && (mouseY <= thirtyFive+thirty)) {
    if(!pressed) {
      inbounds = true;
      button.setFill(color(4,95,180));
    }
  }
  else {
    inbounds = false;
    button.setFill(color(132,132,132));
  }
  
  // Colour the button red on mouse click
  if(pressed) {
      button.setFill(color(180,4,4));
  }
}


// Click toggles
void mousePressed() {
  if(inbounds) {
    if(pressed) {
      pressed = false;
    }
    else {
    pressed = true;
    }
  }
  else {
    pressed = false;
  }
}
