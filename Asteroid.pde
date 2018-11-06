class Asteroid extends Floater
{
	private int rotSpeed;
	Asteroid(){
		myCenterX = (Math.random() * 800);
		myCenterY = (Math.random() * 800);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -11;
		xCorners[1] = 7;
		xCorners[2] = 13;
		xCorners[3] = 6;
		xCorners[4] = -11;
		xCorners[5] = -5;
		yCorners[0] = -8;
		yCorners[1] = -8;
		yCorners[2] = 0;
		yCorners[3] = 10;
		yCorners[4] = 8;
		yCorners[5] = 0;
		myColor = 255;
		myDirectionX = (Math.random() * 4) - 2;
		myDirectionY = (Math.random() * 4) - 2;
		myPointDirection = Math.random() * 360;
		rotSpeed = (int) ((Math.random() * 30) - 15);
	}
	public void setX(int x) {
		myCenterX = x;	
	}
	public int getX() {
		return (int) myCenterX;
	}
	public void setY(int y){
		myCenterY = y;
	}
	public int getY(){
		return (int) myCenterY;
	}
	public void setDirectionX(double x){
		myDirectionX = x;
	}
	public double getDirectionX(){
		return myDirectionX;
	}
	public void setDirectionY(double y){
		myDirectionY = y;
	}
	public double getDirectionY(){
		return myDirectionY;
	}
	public void setPointDirection(int degrees){
		myPointDirection = degrees;
	}
	public double getPointDirection(){
		return myPointDirection;
	}
	public void move ()   //move the floater in the current direction of travel
    {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
    turn(rotSpeed);
  } 
}