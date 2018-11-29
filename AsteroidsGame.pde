Spaceship Boat = new Spaceship();
Star stars;
Bullet henry = new Bullet(Boat);
boolean isAccelerating = false;
boolean isTurningLeft = false;
boolean isTurningRight = false;
ArrayList <Asteroid> AsteroidField;
ArrayList <Bullet> Ammo;
int score = 0;
int lives = 3;
int highScore = 0;

public void setup() 
{
	size(1000,800);
	frameRate(90);
	background(0);
	stars = new Star(); 
	stars.show();
	AsteroidField = new ArrayList <Asteroid>();
	Ammo = new ArrayList <Bullet>();
	for(int i = 0; i < 25; i++) {
		AsteroidField.add(new Asteroid());
	}
}
public void draw() 
{
	background(0);
	stars.show();
	if(isAccelerating == true) {
		Boat.accelerate(0.04);
	}
	if(isTurningRight == true) {
		Boat.turn(5);
	}
	if(isTurningLeft == true) {
		Boat.turn(-5);
	}
	fill(255);
	Boat.move();
	stroke(255);
	Boat.show();
	fill(255);
	stroke(99, 105, 114); 
	for(int i = 0; i < AsteroidField.size(); i++) {
		AsteroidField.get(i).move();
		fill(99, 105, 114);
		AsteroidField.get(i).show();
		if(dist(Boat.getX(), Boat.getY(), AsteroidField.get(i).getX(), AsteroidField.get(i).getY()) < 30){
			AsteroidField.remove(i);
			score-= 100;
			lives--;
			AsteroidField.add(new Asteroid());
		}
		for(int j = 0; j < Ammo.size(); j++) {
			if(dist(Ammo.get(j).getX(), Ammo.get(j).getY(), AsteroidField.get(i).getX(), AsteroidField.get(i).getY())< 30){
				Ammo.remove(j);
				AsteroidField.remove(i);
				score += 100;
				AsteroidField.add(new Asteroid());
			}
		}
	}
	for(int i = 0; i < Ammo.size(); i++){
		Ammo.get(i).move();
		Ammo.get(i).show();
		if(Ammo.get(i).getX() > 999 || Ammo.get(i).getX() < 1 || Ammo.get(i).getY() > 799 || Ammo.get(i).getY() < 1) {
			Ammo.remove(i);
		}
	}
	textSize(30);
	text("Score: " + score, 10, 30);
	text("Lives: " + lives, 10, 60);
	text("High Score: " + highScore, 10, 90);
	if(score > highScore) {
		highScore = score;
	}
	if(lives < 1) {
		score = 0;
		lives = 3;
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
  if (key == ' '){
  	Ammo.add(new Bullet(Boat));
  }
}
void keyReleased()
{
  if (key == '5' || keyCode == UP) isAccelerating = false;
  if (key == '4' || keyCode == LEFT) isTurningLeft = false;
  if (key == '6' || keyCode == RIGHT) isTurningRight = false;
}