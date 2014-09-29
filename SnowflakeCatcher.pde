SnowFlake [] a;
void setup()
{ background(0);
	size(300,300);
	a = new SnowFlake[100];
	for(int i=0;i<a.length;i++)
	{
		a[i]=new SnowFlake();
	}
}
void mouseDragged()
{ if(mousePressed==true && mouseButton==LEFT)
	{
		fill(255);
		noStroke();
		ellipse(mouseX,mouseY,10,10);
	}
	else if(mousePressed==true && mouseButton==RIGHT)
	{
		fill(0);
		noStroke();
		ellipse(mouseX,mouseY,10,10);
	}
}
void draw()
{	 
	for(int i=0;i<a.length;i++)
	{

		a[i].erase();
		a[i].lookDown();
		a[i].move();
		a[i].wrap();
		a[i].show();

	}
	


}


class SnowFlake
{
	int myX, myY;
	boolean moving;
	SnowFlake()
	{ 
		myX=(int)(Math.random()*301);
		myY=(int)(Math.random()*301);
		moving =true;

		
	}

	
	void show()
	{ stroke(0);
		fill(255);
		ellipse(myX,myY,5,5);


	}


	void lookDown()
	{
		if(get(myX,myY+4)==color(0) && myY>=0 && myY<396)
		{ 
			moving=true;
		}
		else
		{
			moving=false;

		}
	}
	void move()
	{
		if(moving==true)
		{
			myY++;
		}

	}


	void erase()
	{
	
		{
			fill(0);
			ellipse(myX,myY,7,7);

		}
		
	} 

	void wrap()
	{
		if(myY==296)
			{myY=0;}
	}

}

