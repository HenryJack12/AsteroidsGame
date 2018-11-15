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
      ellipse(xPos[i], yPos[i], 5, 5);
      stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
      strokeWeight(4);
    }
  }
}