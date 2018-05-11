class Skull {
  float x; //x location
  float y; //y location
  boolean alive; //self explanitory
  boolean closed; //is the mouth closed
  boolean left; //is the skull facing left
  int skullCount; //counts frames for animation
  PImage openLeft;
  PImage closedLeft;
  PImage openRight;
  PImage closedRight;

  Skull (int startC, int startR) { //set start x and y
    x=startC;
    x=startR;
  }

  void display() {
    openLeft=loadImage("SOL.png"); //loading sprites
    closedLeft=loadImage("SCL.png");
    openRight=loadImage("SOR.png");
    closedRight=loadImage("SCR.png");

    skullCount=skullCount+1; //cycle between closed and open
    if (skullCount==15) {
      skullCount=0;
      if (closed==true) {
        closed=false;
      } else if (closed==false) {
        closed=true;
      }
    }

    if (left==true&&closed==true) { //show needed sprite on required location
      image (closedLeft, x, y);
    } else if (left==false&&closed==true) {
      image (closedRight, x, y);
    } else if (left==true&&closed==false) {
      image (openLeft, x, y);
    } else if (left==false&&closed==false) {
      image (openRight, x, y);
    }
  }

  void left() { //move left
    if (left==true) {
      x=x-(1+(1/3));
    }
  }

  void right() { //move right
    if (left==false) {
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