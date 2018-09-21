void setup()
{
  noLoop();
  size(800,500);
}
void draw()
{
  for (int num = 50; num < 750; num = num + 150)
  {
    Die Ludenberg = new Die(num, 100);
    Ludenberg.show();
    Ludenberg.roll();
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
  {
  int mySize, myX, myY, prob;
  
  Die(int x, int y) //constructor
  {
    mySize = 80;
    prob = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
void roll()
  {
    fill(0);
    if (prob == 1) //roll 1
      {
      ellipse(myX+mySize/2, myY+mySize/2, mySize/8, mySize/8);
      }
    else if (prob == 2) //roll 2
      {
      ellipse(myX+mySize/4, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize*3/4, myY+mySize*3/4, mySize/8, mySize/8);
      }
    else if (prob == 3) //roll 3
      {
      ellipse(myX+mySize/4, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize/2, myY+mySize/2, mySize/8, mySize/8);
      ellipse(myX+mySize*3/4, myY+mySize*3/4, mySize/8, mySize/8);
      }
    else if (prob == 4) //roll 4
      {
      ellipse(myX+mySize/4, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize*3/4, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize/4, myY+mySize*3/4, mySize/8, mySize/8);
      ellipse(myX+mySize*3/4, myY+mySize*3/4, mySize/8, mySize/8);
      }
    else if (prob == 5) //roll 5
      {
      ellipse(myX+mySize/2, myY+mySize/2, mySize/8, mySize/8);
      ellipse(myX+mySize/4, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize/4, myY+mySize*3/4, mySize/8, mySize/8);
      ellipse(myX+mySize*3/4, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize*3/4, myY+mySize*3/4, mySize/8, mySize/8);
      }
    else //roll 6
      {
      ellipse(myX+mySize/3, myY+mySize/2, mySize/8, mySize/8);
      ellipse(myX+mySize*2/3, myY+mySize/2, mySize/8, mySize/8);
      ellipse(myX+mySize/3, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize*2/3, myY+mySize/4, mySize/8, mySize/8);
      ellipse(myX+mySize/3, myY+mySize*3/4, mySize/8, mySize/8);
      ellipse(myX+mySize*2/3, myY+mySize*3/4, mySize/8, mySize/8);
      }
}
void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, mySize, mySize, 15);
  }
}
