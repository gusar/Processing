class Queue {

  int count;
  int front;
  int back;
  
  queue(int size) {
    Array = new Projectile[size];
    count = 0;
    front = 0;
    back = 0;
  }

  void add() {
    count++;
    back = (front + count - 1) % Array.length;
    proj[back] = new Projectile();
  }

  void remove() {
    count--;
    proj[front] = new Projectile();
    front = (front + 1) % Array.length;
  }
}
