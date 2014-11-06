class Button {
  
//------------------------------- Variables ----------------------------------  
   float button_width = 300f;
   float button_height = 100f;
   float offset_width = button_width / 2;
   float offset_height = button_height / 2;
   float bX;
   float bY;
   boolean mouse_hover;

   color button_color;
   color button_hover_color;
  
//--------------------------- Set button colors -------------------------------
   Button(color c1, color c2) {
      button_color = c1;
      button_hover_color = c2;
      mouse_hover = false; 
   }
  
//------------------------------ Draw Button --------------------------------
   void draw_button(float x, float y, String s) {
      bX = x-offset_width;
      bY = y-offset_height;
    
      // Draw shadow
      fill(0,0,0,100);
      rect(bX-3, bY+3, button_width, button_height);
    
      // Check for mouse hover
      if(mouseX>bX && mouseX<bX+button_width && mouseY>bY && mouseY<bY+button_height) {
         fill(button_hover_color);
         mouse_hover = true;
      }
      else {
         fill(button_color);
         mouse_hover = false;
      }
    
      // Actually draw button
      rect(bX, bY, button_width, button_height);
      fill(50);
      textSize(32);
      textAlign(CENTER);
      text(s, x, y+12);
   }
}