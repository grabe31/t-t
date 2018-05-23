class Skull {
  float x; //x location
  float y; //y location
  boolean alive; //is it alive?
  boolean closed; //is the mouth closed?
  boolean right; //is the skull facing left?
  int skullCount; //counts frames for animation
  PImage openLeft; //sprites
  PImage closedLeft;
  PImage openRight;
  PImage closedRight;

  Skull (int startC, int startR) { //set start x and y
    x=startC;
    y=startR;
    right=true;
  }

  void display() {
    openLeft=loadImage("SOL.png"); //load sprites
    closedLeft=loadImage("SCL.png");
    openRight=loadImage("SOR.png");
    closedRight=loadImage("SCR.png");
    
    move(); //Moves skull relative to troll

    skullCount=skullCount+1; //cycle between closed and open
    if (skullCount==15) {
      skullCount=0;
      if (closed==true) {
        closed=false;
      } else if (closed==false) {
        closed=true;
      }
    }

    if (right==false&&closed==true) { //show needed sprite on required location
      image (closedLeft, x, y);
    } else if (right==true&&closed==true) {
      image (closedRight, x, y);
    } else if (right==false&&closed==false) {
      image (openLeft, x, y);
    } else if (right==true&&closed==false) {
      image (openRight, x, y);
    }
  }
  
   void move() { //move buzzard relative to troll
    if (right==true) { //uncoment lines in this void once troll is implimented
      // x=x-t.xspeed;
    }
    if (right==false) {
      // x=x+t.xspeed;
    }
  }

  void left() { //move left
    if (right==false) {
      x=x-(1+(1/3));
    }
  }

  void right() { //move right
    if (right==true) {
      x=x+(1+(1/3));
    }
  }

  void down() { //fall
    y=y+2;
  }

  void die() { //self explanity
    //if shot by web, die
  }
}
