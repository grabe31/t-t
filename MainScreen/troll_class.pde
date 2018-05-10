class Troll {
  float x, y, w, h, xspeed, yspeed, tempx, tempy;
  Troll() {
    x = 120;
    y = 60;
    tempx = 300;
    tempy = 300;
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
    rect(x, y, w, h);
  }

  void moveRight() {
    x = x + xspeed;
    if (x%60==0) {
      right=false;
    }
  }

  void moveLeft() {
    x = x - xspeed;
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



  void down() {
    y = y + yspeed;
  }

  void fire() {
  }
}