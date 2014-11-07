// Square class uses properties of Object to create a flying thing
class Square extends Object {

// --------------- Main square initialisation ----------------------
	Square(int l, float[] speed, int type) {
		super(l, random(0,width-l));
		this.speed = random(speed[0],speed[1]);
		this.type = type;
	}

// --------------- Draw object using a sprite ----------------------
	void draw() { 
		// Check for out of bounds
	   if(Y1 > height) {
	   	speed = 0;
	   }

	   if(active) {  
	   	// Collectible
	   	if(this.type == 2) {
	    		image(collectible_sprite, X1, Y1+=speed);
	    	}
	    	// Enemy
	    	else {
	    		image(enemy_sprite, X1, Y1+=speed);
	    	}
	    	Y2 += speed;
		}
	}
}
