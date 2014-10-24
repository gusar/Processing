void setup()
{
  size(500,500);
  background(255);
}

int[] android;
int[] ios;

void loadData()
{
  String[] lines = loadStrings("tunepalqueries.csv");
  android = new int[lines.length];
  ios = new int[lines.length];
  for(int i = 0; i < lines.length; ++ i)
   {
    String[] data = split(lines[i], ",");
    android[i] = Integer.parseInt(data[1]);
    ios[i] = Integer.parseInt(data[2]);
   } 
   
    
}

void draw()
{
 loadData();
 
 for(int i = 1; i < android.length; i ++)
 {
     stroke(255,0,0);
     line(i, height - android[i - 1], i, height - android[i]);
 }
 
 for(int i = 1; i < ios.length ; i ++)
 {
   stroke(0,0,255);
   line(i, height - ios[i - 1], i, height - ios[i]);
 }
}
