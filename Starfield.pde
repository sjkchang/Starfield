//your code here
NormalParticle star = new NormalParticle(400, 400);
void setup()
{
	//your code here
	size(800,800);
	background(0);
}
void draw()
{
	//your code here
	star.show();
	star.move();

}
class NormalParticle
{
	//your code here
	int myColor;
	double myX, myY, dSpeed, dAngle;
	NormalParticle(int x, int y)
	{
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
		myX = x;
		myY = y;
		dSpeed = Math.random()*10;
		dAngle = Math.PI*2*Math.random();
	}

	void move()
	{
		Math.cos(dAngle)*dSpeed;
		Math.sin(dAngle)*dSpeed;
	}
	void show()
	{
		ellipse(myX, myY, 30, 30);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

