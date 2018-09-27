PImage img1, img2, img3, img4, img5, img6; 
void setup()
{
  noLoop();
  size(1300,500);
  img1 = loadImage("data/celes1.png");
  img2 = loadImage("data/celes2.png");
  img3 = loadImage("data/celes3.png");
  img3.resize(600,580);
  img4 = loadImage("data/celes4.png");
  img4.resize(550,550);
  img5 = loadImage("data/celes5.png");
  img5.resize(500,500);
  img6 = loadImage("data/celes6.png");
}
void draw()
{
  int sum = 0;
  bg();
  for (int k = 100; k < 350; k+=200)
  {
    for (int j = 35; j < 750; j+=150)
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
     //celestia background refresh
     fill(#6F082F);
     rect(751,0,549,500);
     //dice background refresh
     fill(#245D08);
     rect(21,400,709,80);
     fill(0,0,0,120);
     rect(26,415,699,60,10);
     fill(#FFCF4B);
     beginShape();
       vertex(670,440);
       vertex(670,450);
       vertex(690,450);
       vertex(690,455);
       vertex(715,445);
       vertex(690,435);
       vertex(690,440);
     endShape();
     fill(255);
     textSize(19);
     text("CELESTIA: ", 30, 450);
   if (sum <= 30) //30 or below (disgust)
   {
     image(img3, 750, -75);
     textSize(17);
     text("\"" + sum + "? What horrible luck! Get away!\"", 130, 450);
   }
   else if (sum > 30 && sum < 40) //31-39 (apathy)
   {
     image(img5, 750, 0);
     textSize(17);
     text("\"" + sum + "? Boring. Come back when you're better.\"", 130, 450);
   }
   else if (sum >= 40 && sum < 44) //40-43 (consideration)
   {
     image(img4, 750, 0);
     textSize(17);
     text("\"" + sum + "? You might win a couple bucks with that.\"", 130, 450);
   }
   else if (sum == 44) //44 (surprise)
   {
     image(img1, 750, 0);
     textSize(17);
     text("\"44? That's the number of death, you know. Most impressive.\"", 130, 450);
   }
   else if (sum > 44 && sum < 47) //45-46 (curiosity)
   {
     image(img6, 750,40);
     textSize(17);
     text("\"" + sum + "? Interesting. You might just have a shot at victory.\"", 130, 450);
   }
   else if (sum >= 47) //47-60 (precious)
   {
     image(img2, 750, 0);
     textSize(17);
     text("\"" + sum + "? Looks like you've beaten me! Congratulations!\"", 125, 450);
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
}PImage img1, img2, img3, img4, img5, img6; 
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
  for (int k = 100; k < 350; k+=200)
  {
    for (int j = 35; j < 750; j+=150)
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
     //celestia background refresh
     fill(#6F082F);
     rect(751,0,549,500);
     //dice background refresh
     fill(#245D08);
     rect(21,400,709,80);
     fill(0,0,0,120);
     rect(26,415,699,60,10);
     fill(#FFCF4B);
     beginShape();
       vertex(670,440);
       vertex(670,450);
       vertex(690,450);
       vertex(690,455);
       vertex(715,445);
       vertex(690,435);
       vertex(690,440);
     endShape();
     fill(255);
     textSize(19);
     text("CELESTIA: ", 30, 450);
   if (sum <= 30) //30 or below (disgust)
   {
     image(img3, 750, -75);
     textSize(17);
     text("\"" + sum + "? What horrible luck! Get away!\"", 130, 450);
   }
   else if (sum > 30 && sum < 40) //31-39 (apathy)
   {
     image(img5, 750, 0);
     textSize(17);
     text("\"" + sum + "? Boring. Come back when you're better.\"", 130, 450);
   }
   else if (sum >= 40 && sum < 44) //40-43 (consideration)
   {
     image(img4, 750, 0);
     textSize(17);
     text("\"" + sum + "? You might win a couple bucks with that.\"", 130, 450);
   }
   else if (sum == 44) //44 (surprise)
   {
     image(img1, 750, 0);
     textSize(17);
     text("\"44? That's the number of death, you know. Most impressive.\"", 130, 450);
   }
   else if (sum > 44 && sum < 47) //45-46 (curiosity)
   {
     image(img6, 750,40);
     textSize(17);
     text("\"" + sum + "? Interesting. You might just have a shot at victory.\"", 130, 450);
   }
   else if (sum >= 47) //47-60 (precious)
   {
     image(img2, 750, 0);
     textSize(17);
     text("\"" + sum + "? Looks like you've beaten me! Congratulations!\"", 125, 450);
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
