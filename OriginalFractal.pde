private int col;
private int num;

public void setup()
{
	size(500, 500);
	col = color(255);
	num = 20;
}

public void draw()
{
	background(0);
	myFractal(250, 250, 400);
}

public void myFractal(int x, int y, int size)
{
	if(size > 30/*num*/)
	{
		stroke(col);
		strokeWeight(1);
		noFill();
		ellipse(x, y, size, size);
		myFractal(x+size/4, y, size/2);
		myFractal(x-size/4, y, size/2);
		myFractal(x, y-size/4, size/2);
		myFractal(x, y+size/4, size/2);
		//myFractal(x-size/4, y+size/2, size/8);
		//myFractal(x, y-3*size/7, size/7);
		col-=1;

	}
	
}
