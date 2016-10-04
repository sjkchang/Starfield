//your code here

Particle[] particles; //= new NormalParticle(400, 400)
void setup()
{
	//your code here
	size(800,800);
	background(0);
	noStroke();
	particles = new Particle[10000];
	for(int i = 0; i < particles.length; i++)
 		{
 			particles[i] = new NormalParticle(400, 400);
 		}
 	particles[0] = new OddballParticle(400, 400);
 	particles[1] = new JumboParticle(400, 400);
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
class NormalParticle implements Particle
{
	//your code here
	int myColor;
	double myX, myY, dSpeed, dAngle;
	NormalParticle(int x, int y)
	{
		myColor = color( (int)(Math.random()*40) , (int)(Math.random()*56), (int)(Math.random()*156));
			
		myX = x;
		myY = y;
		dSpeed = Math.random()*5 + 1;
		dAngle = Math.PI*2*Math.random();
	}

	public void move()
	{
		myX = myX + (Math.cos(dAngle)*dSpeed);
		myY = myY + (Math.sin(dAngle)*dSpeed);
		dAngle = dAngle + .1;
		if(mousePressed)
		{
			dAngle = dAngle - .2;
		}
		
		if((Math.abs(myX) > 800) && (Math.abs(myY) > 800))
		{
			//myX = (Math.random()* 80) + 360;
			//myY = (Math.random()* 80) + 360;
		}
		

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
		rect(myX, myY, 10, 10);
	}
	public void move() 
	{
		myX = myX + (int)(Math.random()*7)-3;
		myY = myY + (int)(Math.random()*7)-3;


	}
}
class JumboParticle implements Particle //uses inheritance
{
	int myColor;
	double myX, myY, dSpeed, dAngle;
	JumboParticle(int x, int y)
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
		ellipse((int)myX, (int)myY, 30, 30);
	}
}

