// ------------------ Spawning queue for each object array -----------------
class Queue {

// ---------------------- Queue variables -------------------------------
   int count;
   int front;
   int back;
   Square[] array;
   int counter = 0;
   boolean spawn = true;

// ------------------ Variables to be passed on to objects ---------------
   int size;
   int side;
   float[] speed;
   int type;

// ----------------------- Make a new queue -----------------------------
   Queue(int s, int si, float[] sp, int t) {
      size = s;
      side = si;
      speed = sp;
      type = t;

      array = new Square[size];
      count = 0;
      front = 0;
      back = 0;

      // Init every element
      for(int i=0; i<array.length; i++) {
         array[i] = new Square(side, speed, type);
      }
   }
  
// ------------------------ Activate an object --------------------------
   void add() {
      count++;
      back = (front + count - 1) % array.length;
      array[back].active = true;
   }

// ------------------------- Reset an object ----------------------------
   void remove(int i) {
      count--;
      array[i] = new Square(side, speed, type);
      front = (front + 1) % array.length;
   }

// ---------------- -- Countdown for spawn permission -------------------
   void spawn_counter(int n) {   
      counter++;
      if(counter>n) {
         counter = 0;
         spawn = true;
      }
   }
}
