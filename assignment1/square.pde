class Square extends Object {

	Square() {
		super(50, random(0,width-50));
		speed = random(1,3);
	}

	Square(int l, float s, color c) {
		super(l, random(0,width-l));
		speed = random(1,s);
		ocolor = c;
	}

	void draw() { 
		fill(ocolor);
	    if(Y1 > height) {
	    	speed = 0;
	    }

	    if(active) {  
	    	rect(X1, Y1+=speed, side, side);
	    	Y2 += speed;
		}
	}
}
