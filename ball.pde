void bounce()
{
  // Update the position of the shape
  xpos = xpos + ( xvel * xdir );
  ypos = ypos + ( yvel * ydir );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) 
  {
    xdir *= -1;
  }
  if (ypos > height-rad || ypos < rad) 
  {
    ydir *= -1;
  }

  if (xpos >= xc && xpos <= xc+200 && ypos >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel=0;
    yvel=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
  
  if (xpos >= xv && xpos <= xv+200 && ypos >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel=0;
    yvel=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
   ellipse(xpos, ypos, rad, rad);
}



void lvl11()
{
    // Update the position of the shape
  xpos1 = xpos1 + ( xvel1 * xdir1 );
  ypos1 = ypos1 + ( yvel1 * ydir1 );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos1 > width-rad1 || xpos1 < rad1) 
  {
    xdir1 *= -1;
  }
  if (ypos1 > height-rad1 || ypos1 < rad1) 
  {
    ydir1 *= -1;
  }

  if (xpos1 >= xc && xpos1 <= xc+200 && ypos1 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel1=0;
    yvel1=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
  
  if (xpos1 >= xv && xpos1 <= xv+200 && ypos1 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel1=0; xvel12=0;
    yvel1=0; yvel12=0;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    ovr=1;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
   
   
  ellipse(xpos1, ypos1, rad1, rad1);
}

void lvl12()
{
    // Update the position of the shape
  xpos12 = xpos12 + ( xvel12 * xdir12 );
  ypos12 = ypos12 + ( yvel12 * ydir12 );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  
  if (xpos12 > width-rad1 || xpos12 < rad1) 
  {
    xdir12 *= -1;
  }
  if (ypos12 > height-rad1 || ypos12 < rad1) 
  {
    ydir12 *= -1;
  }
  

  if (xpos12 >= xc && xpos12 <= xc+200 && ypos12 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel12=0;
    yvel12=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
  
  if (xpos12 >= xv && xpos12 <= xv+200 && ypos12 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel12=0; xvel1=0;
    yvel12=0;  yvel1=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
  
  ellipse(xpos12, ypos12, rad1, rad1);
}

void lvl2()
{
   // Update the position of the shape
  xpos2 = xpos2 + ( xvel2 * xdir2 );
  ypos2 = ypos2 + ( yvel2 * ydir2 );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  
  if (xpos2 > width-rad2 || xpos2 < rad2) 
  {
    xdir2 *= -1;
  }
  if (ypos2 > height-rad2 || ypos2 < rad2) 
  {
    ydir2 *= -1;
  }
  

  if (xpos2 >= xc && xpos2 <= xc+200 && ypos2 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel2=0;
    yvel2=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
  
  if (xpos2 >= xv && xpos2 <= xv+200 && ypos2 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    
    xvel2=0; //xvel1=0;
    yvel2=0;  //yvel1=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
  
  ellipse(xpos2, ypos2, rad2, rad2);
}

void lvl21()
{
  // Update the position of the shape
  xpos21 = xpos21 + ( xvel21 * xdir21 );
  ypos21 = ypos21 + ( yvel21 * ydir21 );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  
  if (xpos21 > width-rad2 || xpos21 < rad2) 
  {
    xdir21 *= -1;
  }
  if (ypos21 > height-rad2 || ypos21 < rad2) 
  {
    ydir21 *= -1;
  }
  

  if (xpos21 >= xc && xpos21 <= xc+200 && ypos21 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel21=0;
    yvel21=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
  
  if (xpos21 >= xv && xpos21 <= xv+200 && ypos21 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel21=0; //xvel1=0;
    yvel21=0;  //yvel1=0;
    ovr=1; 
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
  
  ellipse(xpos21, ypos21, rad2, rad2);
}

void lvl22()
{
  // Update the position of the shape
  xpos22 = xpos22 + ( xvel22 * xdir22 );
  ypos22 = ypos22 + ( yvel22 * ydir22 );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  
  if (xpos22 > width-rad2 || xpos22 < rad2) 
  {
    xdir22 *= -1;
  }
  if (ypos22 > height-rad2 || ypos22 < rad2) 
  {
    ydir22 *= -1;
  }
  

  if (xpos22 >= xc && xpos22 <= xc+200 && ypos22 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel22=0;
    yvel22=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
  
  if (xpos22 >= xv && xpos22 <= xv+200 && ypos22 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel22=0; //xvel1=0;
    yvel22=0;  //yvel1=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
  
  ellipse(xpos22, ypos22, rad2, rad2);
}

void lvl23()
{
  // Update the position of the shape
  xpos23 = xpos23 + ( xvel23 * xdir23 );
  ypos23 = ypos23 + ( yvel23 * ydir23 );

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  
  if (xpos23 > width-rad2 || xpos23 < rad2) 
  {
    xdir23 *= -1;
  }
  if (ypos23 > height-rad2 || ypos23 < rad2) 
  {
    ydir23 *= -1;
  }
  

  if (xpos23 >= xc && xpos23 <= xc+200 && ypos23 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel23=0;
    yvel23=0;
    ovr=1;
     background(bg); 
    image(go,650,250,500,200);       
    
  }
  
  if (xpos23 >= xv && xpos23 <= xv+200 && ypos23 >= 700)
  {
    xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
    xvel23=0; //xvel1=0;dod
    yvel23=0;  //yvel1=0;
    ovr=1;
    //xpos=xpos1=xpos12=xpos2=xpos21=xpos22=xpos23=ypos=ypos1=ypos12=ypos2=ypos21=ypos22=ypos23=-5000;
     background(bg); 
    image(go,650,250,500,200);       
  }
   // Draw the shape
  
  ellipse(xpos23, ypos23, rad2, rad2);
}
