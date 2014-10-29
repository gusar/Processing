void hit_detect(int n){ 
  if((proj[n].X1 >= P1.X1 && proj[n].X1 <= P1.X2) || (proj[n].X2 >= P1.X1 && proj[n].X2 <= P1.X2)){
    println("boom");
    if(proj[n].Y2 >= P1.Y1){
      println("ping");
      proj[n].active = false;
    }
  }
}
