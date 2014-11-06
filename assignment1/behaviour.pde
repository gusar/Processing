//----------------------- Object behaviour ------------------------

// Magic number for hit detection tweaking. Only one I swear.
float k = 8;

void move_objects(Queue a) {

	// Spawn object if timer is reset
	if(a.spawn){
   	a.add();
   	a.spawn = false;
   }

   // Check each object of an object array:
	for(int i = 0; i<a.array.length; i++) {

		// Hit detection
		if((a.array[i].X1 >= P1.X1+k && a.array[i].X1 <= P1.X2-k) || (a.array[i].X2 >= P1.X1+k && a.array[i].X2 <= P1.X2-k)) {
  			if(a.array[i].Y2 >= P1.Y1+15) {
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