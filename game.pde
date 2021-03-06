//player ones image
PImage happyface;
//player two image
PImage sadface;
//player one y val
int p1 = 10;
//player two y val
int p2 = 10;
//value changes if player has won
int win = 0;
//start the code
void setup()
{
  //set screen size
  size(500, 1600);
  //set background coulour to black
  background(0);
  //load happy image
  happyface = loadImage("picb.png");
  //load sad image
  sadface = loadImage("pic1b.png");
  //get random background coulours
  fill(random(255), random(255), random(255));
  //creat background coulour square for ech image
  rect(50, p1, 100, 100);
  rect(350, p2, 100, 100);
  //display both images (happy and sad)
  image(happyface, 50, p1, 100, 100);
  image(sadface, 350, p2, 100, 100);
}
//the looping code
void draw()
{
  //if the first player makes it to the bottom
  if (p1 >= 1515)
  {
    //set text size
    textSize(32);
    //set text coulour to white
    fill(255, 255, 255);
    //if win is equal to zero
    if (win == 0)
    {
      //display text happy wins in the midle of the screen
      text("Happy Wins", 150, 800); 
      // set win to one
      win = 1;
    }
  }
  //if the second player makes it to the bottom
  if (p2 > 1515)
  {
    textSize(32);
    //set text coulour to white
    fill(255, 255, 255);
    //if win is equal to zero
    if (win == 0)
    {
      //display text sad wins in the midle of the screen
      text("sad Wins", 150, 800);
      // set win to one
      win = 1;
    }
  }
}

//what happens when keyboard key is pressed
void keyPressed()
{ 
  //if the val win equals one
  if (win == 1)
  {
    //do nothing
  } else
  {
    //if the a key is pressed
    if (key == 'a')
    {
      //add 15 to p1
      p1 = p1 + 15;
      // set background to black
      background(0);
      //get randome coulours
      fill(random(255), random(255), random(255));
      //create square behind p1 image
      rect(50, p1, 100, 100);
      //get randome coulours
      fill(random(255), random(255), random(255));
      //create square behind p2 image
      rect(350, p2, 100, 100);
      //display p1 image
      image(happyface, 50, p1, 100, 100);
      //display p2 image
      image(sadface, 350, p2, 100, 100);
    }
    // if the L key is pressed
    if (key == 'l')
    {
      //add 15 to val p2
      p2 = p2 + 15;
      // set background to black
      background(0);
      //get randome coulours
      fill(random(255), random(255), random(255));
      //create square behind p1 image
      rect(50, p1, 100, 100);
      //get randome coulours
      fill(random(255), random(255), random(255));
      //create square behind p2 image
      rect(350, p2, 100, 100);
      //display p1 image
      image(happyface, 50, p1, 100, 100);
      //display p2 image
      image(sadface, 350, p2, 100, 100);
    }
  }
}
