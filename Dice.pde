void setup()
{
	background(255, 255, 255);
	size(900, 900);
	noLoop();
}
void draw()
{
	clearScreen();
	int x=150;
	int y=150;
	for (int k = 1; k < 4; k++) {
		for (int c = 1; c < 4; c++) {
			Die die=new Die((k*300)-x, (c*300)-y);
			die.roll();
		}
	}
	//your code here
}
void mousePressed()
{
	redraw();
}
void clearScreen()
{
	fill(255, 255, 255);
	rect(0, 0, 900, 900);
	stroke(0, 0, 0);
	line(300, 0, 300, 900);
	line(600, 0, 600, 900);
	line(0, 300, 900, 300);
	line(0, 600, 900, 600);
}
class Die //models one single dice cube
{
	//variable declarations here
	int x, y,rollOne;
	Die(int blah, int bleh) 
	//constructor
	{
		x=blah;
		y=bleh;
		rollOne=(int)(Math.random()*6+1);//variable initializations here
	}
	void roll()
	{
		fill(0,0,0);
		switch(rollOne)
		{
			case 1:
				ellipse(x, y, 50, 50);
			break;
			case 2:
				ellipse(x-75, y-75, 50, 50);
				ellipse(x+75, y+75, 50, 50);
			break;
			case 3:	
				ellipse(x-75, y-75, 50, 50);
				ellipse(x+75, y+75, 50, 50);
				ellipse(x, y, 50, 50);
			break;
			case 4:
				ellipse(x-75, y-75, 50, 50);
				ellipse(x-75, y+75, 50, 50);
				ellipse(x+75, y-75, 50, 50);
				ellipse(x+75, y+75, 50, 50);
			break;
			case 5:
				ellipse(x-75, y-75, 50, 50);
				ellipse(x-75, y+75, 50, 50);
				ellipse(x+75, y-75, 50, 50);
				ellipse(x+75, y+75, 50, 50);
				ellipse(x, y, 50, 50);
			break;
			case 6:
				ellipse(x-75, y-75, 50, 50);
				ellipse(x-75, y+75, 50, 50);
				ellipse(x+75, y-75, 50, 50);
				ellipse(x+75, y+75, 50, 50);
				ellipse(x-75, y, 50, 50);
				ellipse(x+75, y, 50, 50);
			break;
		}
		//your code here
	}
	void show()
	{
		//your code here
	}
}
