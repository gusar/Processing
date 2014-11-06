// Square class uses properties of Object to create a flying thing
class Square extends Object {

// --------------- Main square initialisation ----------------------
	Square(int l, float s, int t) {
		super(l, random(0,width-l));
		speed = random(1,s);
		type = t;
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
	    		// rect(X1, Y1+=speed, side, side);
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
