//your code here

Particle[] particles; //= new NormalParticle(400, 400)
void setup()
{
	//your code here
	size(800,800);
	background(0);
	noStroke();
	particles = new Particle[6000];
	for(int i = 0; i < particles.length; i++)
 		{
 			particles[i] = new NormalParticle();
 		}
 	particles[0] = new OddballParticle(400, 400);
 	particles[1] = new JumboParticle();
}
void draw()
{	//your code here
	background(20);
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
	public int myColor, colTime;
	public double  dSpeed, dAngle, myX, myY;
	NormalParticle()
	{
		myColor = color( (int)(Math.random()*300), (int)(Math.random()*300),  (int)(Math.random()*300));
		colTime = 0;	
		myX = 400;
		myY = 400;
		dSpeed = Math.random()*10;
		dAngle = Math.PI*2*Math.random();
	}

	public void move()
	{
		myX = myX + (Math.cos(dAngle)*dSpeed);
		myY = myY + (Math.sin(dAngle)*dSpeed);
		dAngle = dAngle + .05;
		dSpeed = dSpeed - .1;
		if(mousePressed)
		{
			dAngle = dAngle + .2;
			dSpeed = dSpeed + .2;
		}
		
		if((Math.abs(myX) > 800) && (Math.abs(myY) > 800))
		{
			myX = 400;
			myY = 400;
			dSpeed =  Math.random()*10;
			colTime = colTime + 1;
			if(colTime % 1 == 0)
			{
				myColor = color( (int)(Math.random()*300) , 0,(int)(Math.random()*300));
			}
			if(colTime % 2 == 0)
			{
				myColor = color((int)(Math.random()*300),(int)(Math.random()*300), 255);
			}
			if(colTime % 3 == 0)
			{
				myColor = color(255, (int)(Math.random()*300),(int)(Math.random()*300));
			}
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
class JumboParticle extends NormalParticle //uses inheritance
{
	public void show()
	{
		fill(myColor);
		ellipse((int)myX, (int)myY, 30, 30);
	}
}

