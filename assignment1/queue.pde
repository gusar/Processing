/*
 * An implementation of a circular array queue.
 */

class Queue {

   int count;
   int front;
   int back;
   Square[] array;
   int counter = 0;
   boolean spawn = true;

   int size;
   int side;
   float speed;
   color colour;
  
   Queue() {
      count = 0;
      front = 0;
      back = 0;
   }

   Queue(int s, int si, float sp, color c) {
      size = s;
      side = si;
      speed = sp;
      colour = c;

      array = new Square[size];
      count = 0;
      front = 0;
      back = 0;

      for(int i=0; i<array.length; i++) {
      array[i] = new Square(side, speed, colour);
      }
   }
  
   void add() {
      count++;
      back = (front + count - 1) % array.length;
      array[back].active = true;
   }

   void remove(int i) {
      count--;
      array[i] = new Square(side, speed, colour);
      front = (front + 1) % array.length;
   }

   void spawn_counter(int n){   
      counter++;
      if(counter>n){
      counter = 0;
      spawn = true;
      }
   }
}
