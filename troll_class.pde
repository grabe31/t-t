class Troll {
  float x, y, w, h, xspeed, yspeed;
  Troll() {
    x = 300; //starting position x
    y = 300; //starting position y
    w = 60;
    h = 60;
    xspeed = 2;
    yspeed = 2;
    left = false;
    up = false;
    right = false;
    down = false;
  }

  void display() {
    fill(255, 0, 0);
    image(dispImage, x, y); //displays character
  }

  void moveRight() {
    x = x + xspeed;
    if (frameCount % 7 == frameCount % 14) { //alternates images
      dispImage=troll[0];
    } else {
      dispImage = troll[1];
    }
    if (x%60==0) {
      right=false;
    }
  }

  void moveLeft() {
    x = x - xspeed;
    if (frameCount % 7 == frameCount % 14) { //alternates between images
      dispImage=troll[2];
    } else {
      dispImage = troll[3];
    }
    if (x%60==0) {
      left=false;
    }
  }

  void jump() {
    y = y - yspeed;
    if (y%120==0) {
      up=false;
    }
  }
/*
  void adjust() { //resets x coord to a multiple of 60
    if (x%60!=0) {
      if(x%60 < 30){
        x = x - xspeed;
      } else {
        x = x + xspeed;
      }
    }
  }
  */



  void down() {
    y = y + yspeed;
  }

  void fire() {
  }
}