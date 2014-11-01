class Queue {

  int count;
  int front;
  int back;
  
  void init_enemies(){
    for(int i=0;i<proj.length;i++){
      proj[i] = new Projectile();
    }
  }
  
  void Queue(int size) {
    array = new Projectile[size];
    count = 0;
    front = 0;
    back = 0;
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
