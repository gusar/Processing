/*
 * An implementation of a circular array queue.
 */

class Queue {

  int count;
  int front;
  int back;
  Square[] array;
  
  Queue() {
    count = 0;
    front = 0;
    back = 0;
  }

  Queue(int size) {
    array = new Square[size];
    count = 0;
    front = 0;
    back = 0;
    init_enemies();
  }

  void init_enemies() {
    for(int i=0; i<array.length; i++) {
      array[i] = new Square();
    }
  }
  
  void add() {
    count++;
    back = (front + count - 1) % array.length;
    array[back].active = true;
  }

  void remove(int i) {
    count--;
    array[i] = new Square();
    front = (front + 1) % array.length;
  }
}
