class Platform {
  float c, r, w, h; // Column, row, width, height

  Platform(float startC, float startR, float startW, float startH) {
    c = startC;
    r = startR;
    w = startW;
    h = startH;
  }

  void displayHalf() {
    for (int i = 0; i < w; i++) {
      image(halfPlat, ((c+i)*60), (r*60), 60, 60); //Draws platform
    }
    
    move();
  }

  void displayFull() {
    for (int i = 0; i < w; i++) {
      image(fullPlat, ((c+i)*60), (r*60), 60, 60); //Draws platform
    }
  }

  void move() {
    if (right == true) {
      c = c - t.xspeed;
    }

    if (left == true) {
      c = c + t.xspeed;
    }
  }
}
