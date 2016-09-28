//your code here

Particle[] particles; //= new NormalParticle(400, 400);
public void setup()
{
	//your code here
	size(800,800);
	background(0);
	noStroke();
	particles = new Particle[10000];
	for(int i = 0; i < particles.length; i++)
 		{
 			particles[i] = new Particle(400, 400);
 		}
 	particles[0] = new OddballParticle(400, 400);
}
void draw()
{	//your code here
	background(0);
	for(int i = 0; i < particles.length; i++)
	{
	//background(0);
	particles[i].show();
	particles[i].move();
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

	public void move()
	{
		myX = myX + (Math.cos(dAngle)*dSpeed);
		myY = myY + (Math.sin(dAngle)*dSpeed);
		//System.out.println(Math.cos(dAngle)*dSpeed);
		//System.out.println(Math.sin(dAngle)*dSpeed);
	}
	public void show()
	{
		fill(myColor);
		ellipse((int)myX, (int)myY, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
	
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	int myX, myY;
	OddballParticle(int x, int y)
	{
		myX = x;
		myY = y;
	}
	public void show() 
	{
		fill(255);
		rect(myX, myY, 100, 100);
	}
	public void move() 
	{
		
	}
}
class JumboParticle //extends NormalParticle//uses inheritance
{
	void show()
	{
		//ellipse(myX, myY, 30, 30);
	}
}

