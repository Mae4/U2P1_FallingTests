class Paper
{
  float _x;
  float _y;
  float _velocity;
  char _grade;

  Paper()
  {
    _x = random(0, 1440);
    _y = random(0, 800);
    _velocity = random(1, 3);
  }

  void draw()
  {
    float _collision = dist(_x, _y, xTable+200, yTable+20);
    rect(_x, _y, 40, 80);
    if (_y>1000)
    {
      _y=0;
    }
    if (_collision<100)
    {
      _y=0;
      _x = random(0, 1440);
      score++;
    }
  }
}


// text (grade)
// if grade is 7 then go color green and 
