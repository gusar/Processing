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
  }

  void init_enemies() {
    for(int i=0; i<array.length; i++){
      proj[i] = new Projectile();
    }
  }
  
  void add() {
    count++;
    back = (front + count - 1) % array.length;
    proj[back] = new Projectile();
  }

  void remove() {
    count--;
    proj[front] = new Projectile();
    front = (front + 1) % array.length;
  }
}
