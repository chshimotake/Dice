void setup()
{
	background(255, 255, 255);
	size(900, 900);
	fill(0, 0, 0);
	line(300, 0, 300, 900);
	line(600, 0, 600, 900);
	line(0, 300, 900, 300);
	line(0, 600, 900, 600);
	noLoop();
}
void draw()
{
	int x=150;
	int y=150;
	for (int k = 1; k < 4; k++) {
		for (int c = 1; c < 4; c++) {
			Die die=new Die((k*300)-x, (c*300)-y);
		}
	}
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int x, y;
	void makeDie(int blah, int bleh) //constructor
	{
		x=blah;
		y=bleh;
		int rollOne=Math.random(1, 6);
		int rollTwo=Math.random(1, 6);//variable initializations here
	}
	void roll()
	{
		if(rollOne=1)
		{
			ellipse(x, y, 50, 50);
		}else if(rollOne=2)
		{
			ellipse(x-75, y-75, 50, 50);
			ellipse(x-75, y+75, 50, 50);
		}else if(rollOne=3)
		{
			ellipse(x-75, y-75, 50, 50);
			ellipse(x-75, y+75, 50, 50);
			ellipse(x, y, 50, 50);
		}else if(rollOne=4)
		{
			ellipse(x-75, y-75, 50, 50);
			ellipse(x-75, y+75, 50, 50);
			ellipse(x+75, y-75, 50, 50);
			ellipse(x+75, y+75, 50, 50);
		}else if(rollOne=5)
		{
			ellipse(x-75, y-75, 50, 50);
			ellipse(x-75, y+75, 50, 50);
			ellipse(x+75, y-75, 50, 50);
			ellipse(x+75, y+75, 50, 50);
			ellipse(x, y, 50, 50);
		}else if(rollOne=6)
		{
			ellipse(x-75, y-75, 50, 50);
			ellipse(x-75, y+75, 50, 50);
			ellipse(x+75, y-75, 50, 50);
			ellipse(x+75, y+75, 50, 50);
			ellipse(x-75, y, 50, 50);
			ellipse(x+75, y, 50, 50);
		}
		//your code here
	}
	void show()
	{
		//your code here
	}
}
