class CretinP {
  float x, y;
  boolean right;
  boolean left;

  CretinP(int startC, int startR) {
    x = startC;
    y = startR;
  }

  void pDisplay() {
    PImage cretinP;
   cretinP = loadImage("CPL.png");
    image(cretinP, x, y);
    move();
 }
  void move() {
    //if (right == true) {
      //x = x - t.xspeed;
    }
    //if (left == true) {
     // x = x + t.xspeed;
    //}
  
  
  void pWalk() {
    x = x - 3;
  }
  void pDown() {
    y = y + 1;
  }
  void pHit() {
  if ((mouseX <= x + 30) && (mouseX >= x - 30) && (mouseY <= y + 30) && (mouseY >= y - 30)) {
    x = -900;
    y = -900;
  }
}
  }