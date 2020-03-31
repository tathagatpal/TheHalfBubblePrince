//This code was developed by Meetakshi Setiya, Tathagat Pal and Kushal Juneja, IIIT Delhi
import processing.sound.*;

import processing.serial.*;


Serial myPort;        // The serial port
float inByte1 = 0; 
float inByte2 = 0; 
float inByte3 = 0; 
float inByte4 = 0; 
float xvel21, xvel22, xvel23, yvel21, yvel22, yvel23;
//int xdir2, xdir22, xdir23, ydir21, ydir22, ydir23;

int score, s, s1, s12, s2, s21, s22, s23;

Sound dhwani;

int l1=0, l11=0, l2=0, l21=0, l22=0, l23=0, l3=0, si=0, mu=0, w1=0, w2=0, w3=0, w4=0, lvl1=0; 
int ovr=0;
int rad=64, rad1 = 50, rad2=35;
float xpos, xpos1, xpos12, xpos2, xpos21, xpos22, xpos23, ypos, ypos1, ypos12, ypos2, ypos21, ypos22, ypos23;    //Starting position of shape    

float xvel = 0.8, xvel1 = 1, xvel12 = 1, xvel2 = xvel21 = xvel22 = xvel23 = 1.2;  //Speed of the shape
float yvel = 3, yvel1 = 3, yvel12 = 3, yvel2 = yvel21 = yvel22 = yvel23 = 3.4;  //Speed of the shape

int xdir = 4, xdir1 = 3, xdir12 = -3, xdir2=4, xdir21=-4, xdir22=4, xdir23=-4;  //Left or Right
int ydir = 5, ydir1 = 4, ydir12 = 4, ydir2=5, ydir21=5, ydir22=5, ydir23=5;  //Top to Bottom


float xc = 600;
float xv = 800;
PImage img;
PImage imgv, dh, bg, sing, mult, go, title, win;


void setup()
{  
  delay(1000);
  size(1896, 808);
  noStroke();
  frameRate(75);
  ellipseMode(RADIUS);
  fill(0);
  img = loadImage("harry.png");
  imgv= loadImage("voldy.png");
  sing= loadImage("single.png");
  mult= loadImage("MF.png");
  bg=   loadImage("finalbg.png");
  go= loadImage("go.png");
  title= loadImage("title.png");
  win= loadImage("winner.png");
  //dh = loadImage("dh.png");

  // Set the starting position of the shape
  xpos = width/2; 
  xpos1 = xpos; 
  xpos12 = xpos; 
  xpos2 = xpos21 = xpos22 = xpos23 = width/2;
  ypos = height/2; 
  ypos1 = ypos+350 ; 
  ypos12 = ypos+350; 
  ypos2 = height/2; 
  ypos21 = (height/2); 
  ypos22 = height/2 - 350; 
  ypos23 = height/2 - 350;
  /*printArray(Serial.list());
  myPort=new Serial(this, Serial.list()[0], 9600);
  myPort.bufferUntil('\n');*/
}

void serialEvent(Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // convert to an int and map to the HArry's movements:
    String[] val=inString.split("-");
    inByte1=int(val[0]);//harrys movement
    inByte2=int(val[1]);//voldys movement
    inByte3=int(val[2]);//flex in  1s and 0s 
    inByte4=int(val[3]);//button in 1 s and 0 s
    //Serial.print(inByte3);
    xv=map(inByte1, 0, 30, 0, 1896);
    xc=map(inByte2, 0, 30, 0, 1896);
  }
}

void over()
{
  background(bg);
  image(go, 650, 250, 500, 200);
  score=s+s1+s12+s2+s21+s22+s23;
  textSize(30);
  text("Your score: ", 700, 600);
  text(score, 900, 600);
  text("Score 100 to win", 720, 650);
}


void keyPressed()
{

  image(img, xc, 662, 150, 150);   
  if (key == 'a')
    xc = xc-15;
  if (key == 'd')
    xc = xc+15;


  image(imgv, xv, 662, 150, 150);   
  if (key == 'j')
    xv = xv-15;
  if (key == 'l')
    xv = xv+15;
  if (key == 'k')
  {
    fill(#990000);
    rect(xv+3, 10, 5, 770);
  }
}


void shootSingle()
{
  if (key=='s' || inByte3==1)
  {
    rect(xc+13, 10, 5, 662); 
    fill(#990000);

    if (xc+13>=xpos-64 && xc+18<xpos+64)
    {
      l1=1;
      /*xpos1=xpos;
       ypos1=ypos;*/
      //xpos=0; 
      //ypos=0;
      xpos=-64;
      ypos=-64;
      xvel=0;
      yvel=0;
      rad=0;
      s=4;
    }

    if ((xc+13>=xpos1-50 && xc+18<xpos1+50))
    {
      l2=1;
      xvel1=0;
      yvel1=0;
      xpos1=-64;
      ypos1=-64;
      s1=8;
    }

    if (xc+13>=xpos12-50 && xc+18<xpos12+50)
    {
      l21=1;
      xvel1=0;
      yvel1=0;
      xpos12=-64;
      ypos12=-64;
      s1=8;
    }

    if (xc+13>=xpos2-35 && xc+18<xpos2+35)
    {
      xvel2=0;
      yvel2=0;
      xpos2=-100;
      ypos2=-100;
      w1=1;
      s2=20;
    }

    if (xc+13>=xpos21-35 && xc+18<xpos21+35)
    {
      xvel21=0;
      yvel21=0;
      xpos21=-100;
      ypos21=-100;
      w2=1;
      s21=20;
    }

    if (xc+13>=xpos22-35 && xc+18<xpos22+35)
    {
      xvel22=0;
      yvel22=0;
      xpos22=-100;
      ypos22=-100;
      w3=1;
      s22=20;
    }

    if (xc+13>=xpos23-35 && xc+18<xpos23+35)
    {
      xvel23=0;
      yvel23=0;
      xpos23=-100;
      ypos23=-100;
      w4=1;
      s23=20;
    }
  }
}

void shootMulti() {
  if (key == 's' || inByte4==1)
  {
    rect(xc+13, 10, 5, 662);
    fill(#990000);

    if (xc+13>=xpos-64 && xc+18<xpos+64)
    {  
      l1=1;
      xpos=-64;
      ypos=-64;
      xvel=0;
      yvel=0;
      rad=0;

      s=4;
    }
    if (xc+13>=xpos1-50 && xc+18<xpos1+50)
    {
      l2=1;
      xvel1=0;
      yvel1=0;
      xpos1=-64;
      ypos1=-64;
      s1=8;
    }

    if (xc+13>=xpos12-50 && xc+18<xpos12+50)
    {
      l21=1;
      xvel12=0;
      yvel12=0;
      xpos12=-64;
      ypos12=-64;
      s12=8;
    }   

    if (xc+13>=xpos2-35 && xc+18<xpos2+35)
    {
      xvel2=0;
      yvel2=0;
      xpos2=-100;
      ypos2=-100;
      w1=1;
      s2=20;
    }

    if (xc+13>=xpos21-35 && xc+18<xpos21+35)
    {
      xvel21=0;
      yvel21=0;
      xpos21=-100;
      ypos21=-100;
      w2=1;
      s21=20;
    }

    if (xc+13>=xpos22-35 && xc+18<xpos22+35)
    {
      xvel22=0;
      yvel22=0;
      xpos22=-100;
      ypos22=-100;
      w3=1;
      s22=20;
    }

    if (xc+13>=xpos23-35 && xc+18<xpos23+35)
    {
      xvel23=0;
      yvel23=0;
      xpos23=-100;
      ypos23=-100;
      w4=1;
      s23=20;
    }
  }


  if (key == 'k' || inByte3==1)
  {
    rect(xv+3, 10, 5, 702);
    fill(#006400);

    if (xv+3>=xpos-64 && xv+8<xpos+64)
    {
      l1=1;
      xpos=-64;
      ypos=-64;
      xvel=0;
      yvel=0;
      rad=0;
      s=4;
    }

    if (xv+3>=xpos1-50 && xv+8<xpos1+50)
    {
      l2=1;
      xpos1=-64;
      ypos1=-64;
      xvel1=0;
      yvel1=0;
      s1=8;
    }

    if (xv+3>=xpos12-50 && xv+8<xpos12+50)
    {
      l21=1;
      xpos12=-64;
      ypos12=-64;
      xvel1=0;
      yvel1=0;

      s12=8;
    }

    if (xv+3>=xpos2-35 && xv+8<xpos2+35)
    {
      xvel2=0;
      yvel2=0;
      xpos2=-100;
      ypos2=-100;
      w1=1;
      s2=20;
    }

    if (xv+3>=xpos21-35 && xv+8<xpos21+35)
    {
      xvel21=0;
      yvel21=0;
      xpos21=-100;
      ypos21=-100;
      w2=1;
      s21=20;
    }

    if (xv+3>=xpos22-35 && xv+8<xpos22+35)
    {
      xvel22=0;
      yvel22=0;
      xpos22=-100;
      ypos22=-100;
      w3=1;
      s22=20;
    }

    if (xv+3>=xpos23-35 && xv+8<xpos23+35)
    {
      xvel23=0;
      yvel23=0;
      xpos23=-100;
      ypos23=-100;
      w4=1;
      s23=20;
    }
  }
}
void sing()
{
  image(title, 500, 50, 1000, 200);
  image(sing, 350, 400, 250, 100);
  if (key=='o' || key=='O')
    si=1;
}
void mul()
{
  image(mult, 1200, 400, 250, 100);
  if (key=='m' || key=='M')
    mu=1;
}
//start the game

void draw() 
{

  background(bg);
  //image(dh,900,450,70,70);
  //text(inByte3,20,20);
  //keyPressed();
  /*image(img, xc, 662, 150, 150);
   image(imgv, xv, 662, 150, 150);*/

  sing();
  mul();
  if (si==1)
  {  
    xv=5000;
    background(bg);
    image(img, xc, 662, 150, 150);
    shootSingle();

    if (l1==1)
    {
      lvl11(); 
      lvl12();
    }

    if (l2==1)
    {
      lvl2();
      lvl23();
    }
    if (l21==1)
    {
      lvl21();
      lvl22();
    }
    bounce();

    if (w1==1 && w2==1 && w3==1 && w4==1)
    {
      background(bg);
      image(win, 500, 300, 600, 200);
    }
  }

  if (ovr==1)
    over();

  if (mu==1)
  {
    background(bg);
    image(img, xc, 662, 150, 150);
    image(imgv, xv, 662, 150, 150); 
    shootMulti();
    if (l1==1)
    {
      lvl11(); 
      lvl12();
    }

    if (l2==1)
    {
      lvl2();
      lvl23();
    }
    if (l21==1)
    {
      lvl21();
      lvl22();
    }

    bounce();

    if (w1==1 && w2==1 && w3==1 && w4==1)
    {
      background(bg);
      image(win, 500, 300, 600, 200);
    }
  }

  if (ovr==1)
    over();
}
