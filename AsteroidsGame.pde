Spaceship Boat = new Spaceship();
Star stars;
boolean isAccelerating = false;
boolean isTurningLeft = false;
boolean isTurningRight = false;
ArrayList <Asteroid> AsteroidField;
public void setup() 
{
	size(1400,950);
	frameRate(90);
	background(0);
	stars = new Star(); 
	stars.show();
	AsteroidField = new ArrayList <Asteroid>(10);
	for(int i = 0; i < 10; i++) {
		AsteroidField.add(new Asteroid());
	}
}
public void draw() 
{
	background(0);
	stars.show();
	if(isAccelerating == true) {
		Boat.accelerate(0.07);
	}
	if(isTurningRight == true) {
		Boat.turn(5);
	}
	if(isTurningLeft == true) {
		Boat.turn(-5);
	}
	Boat.move();
	Boat.show();
	for(int i = 0; i < AsteroidField.size(); i++) {
		AsteroidField.get(i).move();
		AsteroidField.get(i).show();
		if(dist(Boat.getX(), Boat.getY(), AsteroidField.get(i).getX(), AsteroidField.get(i).getY()) < 30){
			AsteroidField.remove(i);
		}
	}
}
void keyPressed()
{
  if (key == '5'  || keyCode == UP) {
  	isAccelerating = true;
  }
  if (key == '4' || keyCode == LEFT) {
  	isTurningLeft = true;
  }
  if (key == '6' || keyCode == RIGHT) {
  	isTurningRight = true;
  }
  if (key == '2' || keyCode == DOWN){
  	Boat.setX((int) (Math.random() * width));
	Boat.setY((int) (Math.random() * height));
	Boat.setPointDirection((int) (Math.random() * 360));
	Boat.setDirectionX(0);
	Boat.setDirectionY(0);
  }
}
void keyReleased()
{
  if (key == '5' || keyCode == UP) isAccelerating = false;
  if (key == '4' || keyCode == LEFT) isTurningLeft = false;
  if (key == '6' || keyCode == RIGHT) isTurningRight = false;
}