void hit_detect(int n){ 
  if((queue.array[n].X1 >= P1.X1 && queue.array[n].X1 <= P1.X2) 
  	|| (queue.array[n].X2 >= P1.X1 && queue.array[n].X2 <= P1.X2)) {
    
    println("boom");
    if(queue.array[n].Y2 >= P1.Y1){
      println("ping");
      queue.remove(n);
    }
  }
}