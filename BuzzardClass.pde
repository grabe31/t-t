class Buzzard {
  float x; //x location
  float y; //y location
  boolean alive; //is it alive?
  boolean left; //is the buzzard facing left?
  int wingState; //wing state for animation: 0=down, 1=middle, 2=up, 3=middle, loop
  int buzzardCount; //counts frames for animation
  PImage left1;//sprites
  PImage left2;
  PImage left3;
  PImage right1;
  PImage right2;
  PImage right3;

  Buzzard (int startC, int startR) { //set start x and y
    x=startC;
    y=startR;
  }

  void display() {
    left1=loadImage("BL1.png"); //load sprites
    left2=loadImage("BL2.png");
    left3=loadImage("BL3.png");
    right1=loadImage("BR1.png");
    right2=loadImage("BR2.png");
    right3=loadImage("BR3.png");

    buzzardCount=buzzardCount+1;//cycle between wing state
    if (buzzardCount==5) {
      buzzardCount=0;
      wingState=wingState+1;
      if (wingState>=4) {
        wingState=0;
      }
    }

    if (left==true&&wingState==0) { //show needed sprite on required location
      image (left1, x, y);
    } else if ((left==true&&wingState==1)||(left==true&&wingState==3)) {
      image (left2, x, y);
    } else if (left==true&&wingState==2) {
      image (left3, x, y);
    } else if (left==false&&wingState==0) {
      image (right1, x, y);
    } else if ((left==false&&wingState==1)||(left==false&&wingState==3)) {
      image (right2, x, y);
    } else if (left==false&&wingState==2) {
      image(right3, x, y);
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

  void die() { //self explanitory
    //if shot by web, die
  }
}