//----------------------- Object behaviour ------------------------
void move_objects(Queue a) {
	if(a.spawn){
   	a.add();
   	a.spawn = false;
   }

	for(int i = 0; i<a.array.length; i++) {

		// Hit detection
		if((a.array[i].X1 >= P1.X1 && a.array[i].X1 <= P1.X2) || (a.array[i].X2 >= P1.X1 && a.array[i].X2 <= P1.X2)) {
  			if(a.array[i].Y2 >= P1.Y1){
      		a.remove(i);
      		hit = true;
	  			}
 		}

 		// Reset an object if out of bounds
		if(a.array[i].Y1>height) {
			a.remove(i);
		}	

		// Draw next object postition
		else if(a.array[i].active) {
			a.array[i].draw();
		}
	}
}