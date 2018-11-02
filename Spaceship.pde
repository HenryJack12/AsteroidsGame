class Spaceship extends Floater
{
	Spaceship(){
		myCenterX = (double) 400;
		myCenterY = (double) 400;
		corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8;
		xCorners[1] = -8;
		xCorners[2] = 16;
		yCorners[0] = -8;
		yCorners[1] = 8;
		yCorners[2] = 0;
		myColor = 255;
		myDirectionX = (double)0;
		myDirectionY = (double) 0;
		myPointDirection = (double) 0;
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
}
