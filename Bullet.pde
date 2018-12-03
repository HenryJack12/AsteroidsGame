class Bullet extends Floater {
	Bullet(Spaceship myShip){
		myCenterX = myShip.getX();
		myCenterY = myShip.getY();
		myPointDirection = myShip.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 10 * Math.cos(dRadians);
		myDirectionY = 10 * Math.sin(dRadians);
		corners = 2;
		int[] xCorners = new int[corners];
		int[] yCorners = new int[corners];
		xCorners[0] = -1;
		yCorners[0] = 0;
		xCorners[1] = 1;
		yCorners[1] = 0;
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
	public void show() {
		//fill(76, 206, 72);
		stroke(76, 206, 72);
		ellipse((int)myCenterX, (int)myCenterY, 5, 5);
	}
}