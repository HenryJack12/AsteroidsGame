class Star
{
  int xPos[];
  int yPos[];
  Star()
  {
    xPos = new int[300];
    yPos = new int[300];
    for (int i = 0; i< 300; i++)
    {
      xPos[i] = (int)(Math.random() * width);
      yPos[i] = (int)(Math.random() * height);
    }
  }
  void show()
  {
    for (int i = 0; i < 300; i++)
    {
      strokeWeight(.5);
      stroke(0,255,12);
      fill(0);
      ellipse(xPos[i], yPos[i], 5, 5);
      ellipse(xPos[i], yPos[i], 5, 5);
    }
  }
}