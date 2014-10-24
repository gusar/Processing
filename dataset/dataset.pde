import java.util.Arrays;

void setup(){
  size(1100, 750);
  loadData();
}


int[] android, ios, androidByMonth, iosByMonth;
int androidDays, iosDays, maxQueries, incr, thickness;


void loadData(){
  maxQueries = Integer.MIN_VALUE;
  int[] daysInMonth = {31,28,31,30,31,30,31,31,30,31,30,31};
  androidByMonth = new int[12];
  iosByMonth = new int[12];
  String[] lines = loadStrings("tunepalqueries.csv");
  android = new int[lines.length];
  ios = new int[lines.length];
  
  int monthNumber = 0;
  int dayNumber = 0;
  
  for(int i = 0; i < lines.length; i++){
    String[] data = split(lines[i], ",");
    android[i] = Integer.parseInt(data[1]);  //convert string data[1] to string
    ios[i] = Integer.parseInt(data[2]);
    
    androidByMonth[monthNumber] += android[i];
    iosByMonth[monthNumber] += ios[i];
    
    dayNumber++;
    
    if(dayNumber >= daysInMonth[monthNumber]){
      dayNumber = 0;
      if(monthNumber >= 11){
        monthNumber = 0;
      }
      else monthNumber++;
    }
  }
  
  println(Arrays.toString(androidByMonth));
  println(Arrays.toString(iosByMonth));
}



void draw(){
  background(0);
  stroke(255);
  
  incr = 0;
  thickness = width/24;
  
  
  for(int i = 0; i < androidByMonth.length; i++){
    fill(0,128,255);
    rect(incr, height-androidByMonth[i]/20, thickness, androidByMonth[i]/20);
    incr += thickness;
    fill(250,88,88);
    rect(incr, height-iosByMonth[i]/20, thickness, iosByMonth[i]/20);
    incr += thickness;
  }
  

/*
  // Draw a day by day line diagram for android and ios data
  
  int x = 0;
  
  for(int i = 0; i < android.length; i++){
    point(x, height-android[i]);
    
    if(i > 0){
      line(x-3, height-android[i-1], x, height-android[i]); 
    }
    
    x += 3;
  }
  
  x = 0;
  stroke(0,223,0);
  
  for(int i = 0; i < ios.length; i++){
    point(x, height-ios[i]);
  
    if(i > 0){
      line(x-3, height-ios[i-1], x, height-ios[i]); 
    }
    
    x += 3;
  }
*/
}
