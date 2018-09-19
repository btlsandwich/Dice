Die Celestia = new Die(150,150);
Die Ludenberg = new Die(300,300);
void setup()
{
	noLoop();
  size(500,500);
}
void draw()
{
	Celestia.show();
  Ludenberg.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int mySize, myX, myY;
	
	Die(int x, int y) //constructor
	{
		mySize = 60;
    myX = x;
    myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
    noStroke();
		fill(255);
    rect(myX, myY, mySize, mySize);
    fill(0);
    ellipse(myX+mySize/2, myY+mySize/2, mySize/8, mySize/8);
	}
}
