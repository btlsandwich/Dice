PImage img1;
void setup()
{
  noLoop();
  size(800,500);
  img1 = loadImage("celes1.png");
}
void draw()
{
  bg();
  int sum = 0;
  for (int j = 50; j < 750; j = j + 150)
  {
    for (int k = 100; k < 350; k = k + 200)
    {
    Die Celestia = new Die(j, k);
    Celestia.show();
    Celestia.roll();
      if (Celestia.prob == 1)
      {
         sum=sum+1; 
      }
      else if (Celestia.prob == 2)
      {
         sum=sum+2;
      }
      else if (Celestia.prob == 3)
      {
         sum=sum+3; 
      }
      else if (Celestia.prob == 4)
      {
         sum=sum+4; 
      }
      else if (Celestia.prob == 5)
      {
         sum=sum+5; 
      }
      else
      {
         sum=sum+6; 
      }
    }
  }
  text("Total: " + sum, 350,400);
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
void bg() 
{
   image(img1, 75, 50); 
}
