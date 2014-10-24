import java.util.Arrays;

int[] android, ios;
int androidTotal, iosTotal, maxQueries;
int centX;
int centY;

void setup(){
  size(1100, 750);
  centX = width/2;
  centY = height/2;
  loadData();
}

//widthOfArc ArcStart ArcEnd (radians) arc()
//all queries == 2pi


void loadData(){
  maxQueries = Integer.MIN_VALUE;
  String[] lines = loadStrings("tunepalqueries.csv");
  android = new int[lines.length];
  ios = new int[lines.length];
  
  int monthNumber = 0;
  int dayNumber = 0;
  
  for(int i = 0; i < lines.length; i++){
    String[] data = split(lines[i], ",");
    android[i] = Integer.parseInt(data[1]);  //convert string data[1] to string
    ios[i] = Integer.parseInt(data[2]);
    
    androidTotal += android[i];
    iosTotal += ios[i];
}



void draw(){
  background(0);
  stroke(255);
  
  int arcTotal = TWO_PI/
  
  arc(centX, centY, 400, 400, 
  
}
