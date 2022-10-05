void setup()
  {
    size(500,500);
    textAlign(CENTER,CENTER);
    noLoop();
  }
Die bob;
int counter;
  void draw()
  {
    background(197);
    for(int x = 0; x <= 500; x+=56){
      for(int y = 0; y <= 440; y+=56){
        bob = new Die(x,y);
        bob.show();
      }
    }
    fill(0);
    text("Dots: " + counter,250,450); 
    counter = 0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int dots;
      int myX, myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          dots = (int)(Math.random()*6)+1;
          roll();
      }
      void roll()
      {
    if(dots == 1){
      counter++;
    }
    if(dots == 2){
      counter+=2;
    }
    if(dots == 3){
      counter+=3;
    }
    if(dots == 4){
      counter+=4;
    }
    if(dots == 5){
      counter+=5;
    }
    if(dots == 6){
      counter+=6;
    }
    
 }
     
      void show()
      {
        fill(255);
        rect(myX,myY,50,50);
        fill(0);
        if(dots == 1){
          ellipse(myX+25,myY+25,10,10);
        }
        if(dots == 2){
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
        }
        if(dots == 3){
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+25,myY+25,10,10);
          ellipse(myX+40,myY+40,10,10);
        }
        if(dots == 4){
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+10,myY+40,10,10);
          ellipse(myX+40,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
        }
        if(dots == 5){
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+10,myY+40,10,10);
          ellipse(myX+40,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
          ellipse(myX+25,myY+25,10,10);
        }
        if(dots == 6){
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+10,myY+40,10,10);
          ellipse(myX+40,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
          ellipse(myX+40,myY+25,10,10);
          ellipse(myX+10,myY+25,10,10);
        }
      }
  }
