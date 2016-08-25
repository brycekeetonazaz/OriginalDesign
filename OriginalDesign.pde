void setup()
{
    size(1000,500);
}

int dudeX = 500;
int dudeY = 250;
int dudeXSpeed = 0;
int dudeYSpeed = 0;
int dotX = 0;
int dotY = 0;
boolean dotOnScreen = false;

void draw()
{

	background(0);
	dude(true);
	if(mousePressed == true)
	{
		dot();
	}
}
void dude(boolean mouthOpen)
{
	fill(255,255,0);
	if(mouthOpen == false)
	{
		ellipse(dudeX,dudeY,25,25);
	}
	else if(mouthOpen == true)
	{
		if(dudeYSpeed>0)
		{
			arc(dudeX,dudeY,25,25,PI/4,3*PI/5, PIE);
		}
		if(dudeYSpeed<0)
		{
			arc(dudeX,dudeY,25,25,PI/4,7*PI/4);
		}
		if(dudeXSpeed>0)
		{
			arc(dudeX,dudeY,25,25,PI/4,7*PI/4);
		}
		if(dudeXSpeed<0)
		{
			arc(dudeX,dudeY,25,25,PI/4,7*PI/4);
		}
		
	}
	if(dotOnScreen == true)
	{
		dudeXSpeed = ((dudeX - dotX)/10);
		dudeYSpeed = ((dudeY - dotY)/10);
		dudeX -= dudeXSpeed;
		dudeY -= dudeYSpeed;
		dot();
	}
	if(dudeX >= dotX-12 && dudeX <= dotX+12 && dudeY <= dotY+12 && dudeY >= dotY-12)
	{
		dotOnScreen = false;
		mouthOpen = false;
		ellipse(dudeX,dudeY,25,25);
	}
}
void dot()
{
	if(dotOnScreen == false)
	{
		dotX = mouseX;
		dotY = mouseY;
		fill(255);
		ellipse(dotX,dotY,12,12);
		dotOnScreen = true;
	}
	else
	{
		fill(255);
		ellipse(dotX,dotY,12,12);
	}
}


