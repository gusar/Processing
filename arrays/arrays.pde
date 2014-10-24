
void setup(){
  ages = new int[100];
  int total = 0;
  int max = Integer.MIN_VALUE;
  int min = Integer.MAX_VALUE;
  
  for(int i = 0; i < ages.length; i++){
    ages[i] = (int)random(0,100);
    total += ages[i];
    
    if(ages[i] > max){
      max = ages[i];
    }
    else if(ages[i] < min){
      min = ages[i];
    }
  }
 
  int average = total / 100; 
  
  for(int i = 0; i < ages.length; i++){
    println(ages[i]);
  } 
  
  println("Average is: "+average);
  println("Max is: "+max);
  println("Min is: "+min);
}

int[] ages;

void draw(){
  
}
