Platform[] p = new Platform[9]; //Change this if you add more platforms
Troll t;
boolean left = false, up = false, right = false, down = false;
PImage[] troll;
PImage dispImage;

void setup() {
  
  noStroke();
  size(1000, 700);
  displayPlatforms();
  t = new Troll(11, 5);
  troll = new PImage[8];
  troll[0] = loadImage("TRR1.png");
  troll[1] = loadImage("TRR2.png");
  troll[2] = loadImage("TRL1.png");
  troll[3] = loadImage("TRL2.png");
  troll[4] = loadImage("TSR.png");
  troll[5] = loadImage("TSL.png");
  troll[6] = loadImage("TJR.png");
  troll[7] = loadImage("TJL.png");
  dispImage=troll[4];
}

void draw() {

  background(0);
  for (int i = 0; i < p.length; i++) {
    p[i].display();
  }
  t.display();
  if (right == true) {
    t.moveRight();
    left = false;
  }
  if (left == true) {
    t.moveLeft();
    right = false;
  }
  if (up == true) {
    t.jump();
  }
  if(up == true && right == true){
    t.jumpRight();
  }
  if(up == true && left == true){
    t.jumpLeft();
  }
  if(t.x%60!=0 && left == false && right == false && up == false){
    t.adjust();
  }
  t.fire();
  if (up == false) {
    t.down();
  }

  // Intersects the platform with the character in all directions
  for (int i = 0; i < p.length; i++) {
    if (rectangleIntersect(t, p[i])) {
      if ((t.x+60) <= (p[i].c*60)) {
        t.x = (p[i].c*60) - t.w;
      } else if (t.x - (p[i].w*60) >= (p[i].c*60)) {
        t.x = (p[i].c*60) + (p[i].w*60);
      } else if (t.y <= (p[i].r*60)) { // from top
        t.y = (p[i].r*60) - t.h;
      } else if (t.y >= (p[i].r*60)) {
        up = false;
      }
    }
  }
}

boolean rectangleIntersect(Troll r1, Platform r2) {
  //Dist apart on x axis
  float distanceX = (r1.x + r1.w/2) - ((r2.c*60) + (r2.w*30));
  //Dist apart on y axis
  float distanceY = (r1.y + r1.h/2) - ((r2.r*60) + (r2.h*30));

  //Combined half-widths
  float combinedHalfW = r1.w/2 + (r2.w*30);
  //Combined half-heights
  float combinedHalfH = r1.h/2 + (r2.h*30);

  //Check for intersection on x-axis
  if (abs(distanceX) < combinedHalfW) {
    //Intersection on y-axis
    if (abs(distanceY) < combinedHalfH) {
      return true;
    }
  }
  return false;
}

//Moves the troll by setting the movement booleans to true
void keyPressed() {
  switch (keyCode) {
  case 37:
    left = true;
    break;
  case 38:
    up = true;
    break;
  case 39:
    right = true;
    break;
  case 40:
    down = true;
    break;
  }
}

void keyReleased() {
  switch (keyCode) {
  case 40:
    down = false;
    break;
  }
}

//Displays the Platforms, input is column, row, width, height
void displayPlatforms() {
  p[0] = new Platform(1, 3, 3, .5);
  p[1] = new Platform(5, 3, 3, .5);
  p[2] = new Platform(9, 3, 5, .5);
  p[3] = new Platform(3, 5, 7, .5);
  p[4] = new Platform(1, 7, 5, .5);
  p[5] = new Platform(3, 9, 17, .5);
  p[6] = new Platform(8, 7, 7, .5);
  p[7] = new Platform(13, 5, 7, .5);
  p[8] = new Platform(15, 3, 3, .5);
}