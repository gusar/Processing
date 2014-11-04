//----------------------- Projectile behaviour1 -------------------------

int counter = 0;
boolean tick = true;

void move_objects() {
	for(int i = 0; i<queue.array.length; i++) {

		//If 
		hit_detect(i);
		if(queue.array[i].Y1>height) {
			queue.remove(i);
			println("remove 1");
		}	

		else if(queue.array[i].active) {
			queue.array[i].draw();
		}
	}
} 

void tick_counter(){   
	counter++;
	if(counter>60){
   	counter = 0;
   	tick = true;
	}
}