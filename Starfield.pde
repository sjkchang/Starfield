//your code here
NormalParticle[] star; //= new NormalParticle(400, 400);
void setup()
{
	//your code here
	size(800,800);
	background(0);
	noStroke();
	star = new NormalParticle[10000];
	for(int i = 0; i < star.length; i++)
 		{
 			star[i] = new NormalParticle(400, 400);
 		}
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < star.length; i++)
	{
	//background(0);
	star[i].show();
	star[i].move();
	}


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
		myX = myX + (Math.cos(dAngle)*dSpeed);
		myY = myY + (Math.sin(dAngle)*dSpeed);
		//System.out.println(Math.cos(dAngle)*dSpeed);
		//System.out.println(Math.sin(dAngle)*dSpeed);
	}
	void show()
	{
		fill(myColor);
		ellipse((int)myX, (int)myY, 5, 5);
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

