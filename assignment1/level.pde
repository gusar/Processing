class Level{
  
   color lime = color(230,238,156);
   color green = color(197,225,165);
   color yellow = color(255,245,157);
   color orange = color(255,204,128);
   color blue = color(129,212,250);
   color purple = color(179,157,219);
   color[] color_array = {lime,green,yellow,orange,blue,purple};
   color level_color;

   Level(){
      // level_color = color_array[(int)random(0,5)];
      // background(level_color);
   }

   void draw() {
      image(level_background,0,0);
   }
}
