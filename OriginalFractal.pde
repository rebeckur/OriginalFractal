public void setup()
{
	size(500, 500);
	background(0);
}

public void draw()
{
	background(0);
	myFractal(150, 150, 470);
}

public void myFractal(int x, int y, int size)
{
	if(size < 50)
	{
		stroke(255);
		strokeWeight(1);
		noFill();
		ellipse(x, y, size, size);
	}
	else
	{
		myFractal(x, y, size/2);
		myFractal(x+size/4, y, size/2);
		myFractal(x, y+size/4, size/2);
		myFractal(x+size/4, y+size/4, size/2);
		//myFractal(x-size/2, y+size/2, size/2);
	}
}