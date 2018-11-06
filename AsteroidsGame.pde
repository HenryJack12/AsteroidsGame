Spaceship Boat = new Spaceship();
Star stars;
boolean isAccelerating = false;
boolean isTurningLeft = false;
boolean isTurningRight = false;
Asteroid[] AsteroidField = new Asteroid[10];
public void setup() 
{
	size(800,800);
	background(0);
	stars = new Star(); 
	stars.show();
	for(int i = 0; i < AsteroidField.length; i++) {
		AsteroidField[i] = new Asteroid();
	}
}
public void draw() 
{
	background(0);
	stars.show();
	if(isAccelerating == true) {
		Boat.accelerate(0.1);
	}
	if(isTurningRight == true) {
		Boat.turn(5);
	}
	if(isTurningLeft == true) {
		Boat.turn(-5);
	}
	Boat.move();
	Boat.show();
	for(int i = 0; i < AsteroidField.length; i++) {
		AsteroidField[i].move();
		AsteroidField[i].show();
	}
}
void keyPressed()
{
  if (key == '5') {
  	isAccelerating = true;
  }
  if (key == '4') {
  	isTurningLeft = true;
  }
  if (key == '6') {
  	isTurningRight = true;
  }
  if (key == '2'){
  	Boat.setX((int) (Math.random() * 800));
	Boat.setY((int) (Math.random() * 800));
	Boat.setPointDirection((int) (Math.random() * 360));
	Boat.setDirectionX(0);
	Boat.setDirectionY(0);
  }
}
void keyReleased()
{
  if (key == '5') isAccelerating = false;
  if (key == '4') isTurningLeft = false;
  if (key == '6') isTurningRight = false;
}