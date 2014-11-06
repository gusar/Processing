class Object{
  
   int side;
   float speed;
   float X1;
   float Y1;
   float X2;
   float Y2;
   boolean active;
   int type;

   Object(int l, float x) {
      side = l;
      X1 = x;
      Y1 = -side;
      X2 = X1 + side;
      Y2 = Y1 + side;
      active = false;
      hit = false;
   }
}