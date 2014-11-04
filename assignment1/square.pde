class Square extends Object {

	Square() {
		super(50, random(0,width-50));
		speed = random(1,3);
		active = false;
	}

	Square(float s, boolean a) {
		super(50, random(0,width-50));
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
