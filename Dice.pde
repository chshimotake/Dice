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
	int z=300;
	Die die=new Die((0)+x, (0)+y, 300);
	die.show();
	die.roll();
	for(int i=0;i<3;i++)
	{
		for(int n=0;n<6;n++)
		{
			text("x", n*100+10, i*100+10);
		}
	}
	println(1234/10);
	/*for (int k = 1; k < 4; k++) {
		for (int c = 1; c < 4; c++) {
			Die die=new Die((k*300)-x, (c*300)-y);
			die.roll();
		}
	}*/
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
	/*stroke(0, 0, 0);
	line(300, 0, 300, 900);
	line(600, 0, 600, 900);
	line(0, 300, 900, 300);
	line(0, 600, 900, 600);*/
}
class Die //models one single dice cube
{
	//variable declarations here
	int x, y,rollOne, diceSide;
	Die(int blah, int bleh, int bluh) 
	//constructor
	{
		x=blah;
		y=bleh;
		diceSide=bluh;
		rollOne=(int)(Math.random()*6+1);//variable initializations here
	}
	void roll()
	{
		fill(0,0,0);
		switch(rollOne)
		{
			case 1:
				ellipse(x, y, diceSide/6, diceSide/6);
			break;
			case 2:
				ellipse(x-diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
			break;
			case 3:	
				ellipse(x-diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
				ellipse(x, y, diceSide/6, diceSide/6);
			break;
			case 4:
				ellipse(x-diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x-diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
			break;
			case 5:
				ellipse(x-diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x-diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
				ellipse(x, y, diceSide/6, diceSide/6);
			break;
			case 6:
				ellipse(x-diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x-diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y-diceSide/4, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y+diceSide/4, diceSide/6, diceSide/6);
				ellipse(x-diceSide/4, y, diceSide/6, diceSide/6);
				ellipse(x+diceSide/4, y, diceSide/6, diceSide/6);
			break;
		}
		//your code here
	}
	void show()
	{
		fill(0,0,0);
		rect(x, y, diceSide, diceSide);
		fill(255,255,255);
		rect(x-1,y+1,diceSide-2,diceSide-2);
	}
}
