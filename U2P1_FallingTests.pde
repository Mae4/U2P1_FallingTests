/*

  This project isn't completely finished, however the basic concept is having the table,
  which you can move with arrow keys, catch the good tests, and escape the bad ones.

*/

PImage table;
float xTable = 400;
float yTable = 680;
int score = 0;
Paper Papers[] = new Paper [10];

void setup()
{
  size(1440, 1000);
  table = loadImage("table.png");
  table.resize(400, 200);

  for (int i=0; i < 10; i++)
  {
    Papers[i] = new Paper();
  }
}
void draw() 
{
  background(255, 255, 255);
  image(table, xTable, yTable);
  fill(255, 255, 255);
  for (int i=0; i < 10; i++)
  {
    Papers[i]._y = Papers[i]._y + Papers[i]._velocity + 2;
    Papers[i].draw();
  }
  fill(255, 0, 0);
  textSize(20);
  text("Score: "+score, 100, 100);
}

void keyPressed()
{
  if (keyCode == RIGHT)
  {
    xTable = xTable+30;
  }
  if (keyCode == LEFT)
  {
    xTable = xTable-30;
  }
  if (xTable>1190)
  {
    xTable=-250;
  }
  if (xTable+250<0)
  {
    xTable=1190;
  }
}
