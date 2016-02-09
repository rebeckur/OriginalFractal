public void setup()
{
	size(500, 500);
	background(0);
	myFractal(250, 250, 200);
}

public void draw()
{
}

public void myFractal(int x, int y, int size)
{
	if(size < 30)
	{
		stroke(255);
		strokeWeight(2);
		noFill();
		ellipse(x, y, size, size);
	}
	else
	{
		myFractal(x-50, y, size/2);
		myFractal(x, y-50, size/2);
		myFractal(x+50, y, size/2);
		myFractal(x, y+50, size/2);
		myFractal(x-50, y-50, size/2);
		myFractal(x+50, y+50, size/2);
		myFractal(x-50, y+50, size/2);
	}
}