//----------------------- Projectile behaviour1 -------------------------

int counter = 0;
boolean tick = true;
Queue queue = new queue(100);
  
void enemy1(int n){
  if(tick && counter == 0 && !proj[n].active){
      queue.add();
      proj[n].init(2, random(0,width-proj[n].side));
      tick = false;
  }
  else if(proj[n].active){
    proj[n].run();
  }
  if(proj[proj.length-1].active){
    println("bam");
    newLevel.init_enemies();
  }
} 

void tick_counter(){   
  counter++;
  if(counter>60){
    counter = 0;
    tick = true;
  }
}
