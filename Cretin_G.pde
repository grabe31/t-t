class CretinG {
  float x, y;
  PImage cretinG;
  boolean egg;
  boolean right;
  boolean left;

  CretinG(int startC, int startR) {
    x = startC;
    y = startR;
  }

  void gDisplay() {
    if(egg == false){
    cretinG = loadImage("CGL.png");
    image(cretinG, x, y);
    move();
    }
  }

  void move() {
    if (right == true) {
      //x = x - t.xspeed;
    }
    if (left == true) {
     // x = x + t.xspeed;
    }
  }


void gWalk() {
  if (egg == false) {
    x = x - 1;
  } else if (egg == true) {
    x = x + 0;
  }
}
void gDown() {
  if (egg == false) {
    y = y + 1;
  } else if (egg == true) {
    y = y + 0;
  }
}
void gHit() {
  if ((mouseX <= x + 30) && (mouseX >= x - 30) && (mouseY <= y + 30) && (mouseY >= y - 30)) {
    egg = true;
  }
  if (egg == true) {
   if ((Egg.timer <= 300) && (Egg.timer >= 151)){
     cretinG = loadImage("EGG.png");
  //  background(0);
    image(cretinG, x, y);
   }else if(Egg.timer < 150){
     cretinG = loadImage("BEG.png");
    //background(0);
    image(CretinG.cretinG, x, y);
   }
  }
}
}