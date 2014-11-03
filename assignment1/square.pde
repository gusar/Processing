class Square extends Object {

	Square() {
		super(50, random(0,width-side));
		speed = random(1,3);
		active = true;
	}

	Square(float s, boolean a) {
		super(50, random(0,width-side));
		speed = s;
		active = a;
	}

	void draw() { 
	    if(Y1 > height){
	    	speed = 0;
	    }

	    if(active) {  
	    	rect(X1, Y1+=speed, side, side);
	    	Y2 += speed;
		}
	}
}