PImage img1, img2, img3, img4, img5, img6; 
void setup()
{
  noLoop();
  size(1300,500);
  img1 = loadImage("celes1.png");
  img2 = loadImage("celes2.png");
  img3 = loadImage("celes3.png");
  img3.resize(600,580);
  img4 = loadImage("celes4.png");
  img4.resize(550,550);
  img5 = loadImage("celes5.png");
  img5.resize(500,500);
  img6 = loadImage("celes6.png");
}
void draw()
{
  int sum = 0;
  bg();
  for (int j = 35; j < 750; j = j + 150)
  {
    for (int k = 100; k < 350; k = k + 200)
    {
    Die Celestia = new Die(j, k);
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
      Celestia.show();
      Celestia.roll();
      celes(sum);
    }
  }
  color(0);
  text("Total: " + sum, 350,450);
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
    fill(0,0,0,120);
    rect(myX+8, myY+8, mySize, mySize, 15);
    fill(255);
    rect(myX, myY, mySize, mySize, 15);
    fill(220,220,220,120);
    rect(myX, myY, mySize-5, mySize-5, 15);
  }
}
void celes(int sum)
{
   fill(0);
   if (sum <= 30) //30 or below (disgust)
   {
     fill(#6F082F);
     rect(750,0,550,500);
     image(img3, 750, -75);
     fill(0);
   }
   else if (sum > 30 && sum < 40) //31-39 (apathy)
   {
     fill(#6F082F);
     rect(750,0,550,500);
     image(img5, 750, 0);
     fill(0);
   }
   else if (sum >= 40 && sum < 44) //40-43 (consideratio)
   {
     fill(#6F082F);
     rect(750,0,550,500);
     image(img4, 750, 0);
     fill(0);
   }
   else if (sum == 44) //44 (surprise)
   {
     fill(#6F082F);
     rect(750,0,550,500);
     image(img1, 750, 0);
     fill(0);
   }
   else if (sum > 44 && sum < 47) //45-46 (curiosity)
   {
     fill(#6F082F);
     rect(750,0,550,500);
     image(img6, 750,40);
     fill(0);
   }
   else if (sum >= 47) //47-60 (precious)
   {
     fill(#6F082F);
     rect(750,0,550,500);
     image(img2, 750, 0);
     fill(0);
   }
}
void bg()
{
   //dice border
   stroke(3);
   fill(#7E3203);
   rect(0,0,750,500);
   line(0,0,20,20);
   line(0,500,20,480);
   line(750,0,730,20);
   line(750,500,730,480);
   //dice background
   fill(#245D08);
   rect(20,20,710,460);
}
