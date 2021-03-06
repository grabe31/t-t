Platform[] p = new Platform[41]; //Change this if you add more platforms
Troll t;
boolean left = false, up = false, right = false, down = false;
PImage[] troll;
PImage dispImage;
PImage halfPlat;
PImage fullPlat;

void setup() {
  size(1000, 720); //The width is 1 column wider then is shown in the actual game and the height is 2 more
  displaylvl1();
  t = new Troll(60, 120);
  halfPlat = loadImage("HWL.png");
  fullPlat = loadImage("FWL.png");
}

void draw() {
  background(0);
  noStroke();
  for (int i = 0; i < p.length; i++) { //Displays each of the platform
    p[i].displayHalf();
    //p[i].displayFull();
  }

  t.display(); //Displays troll

  // Running movement of the trolls if these booleans are true
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
void displaylvl1() {
  // Half
  // Top row of the starting screen
  p[0] = new Platform(1, 3, 3, .5);
  p[1] = new Platform(5, 3, 3, .5);
  p[2] = new Platform(9, 3, 5, .5);
  p[3] = new Platform(15, 3, 3, .5);
  p[4] = new Platform(19, 3, 3, .5);

  // Row 2 start screen
  p[5] = new Platform(3, 5, 7, .5);
  p[6] = new Platform(13, 5, 7, .5);

  // Row 3 start screen
  p[7] = new Platform(1, 7, 5, .5);
  p[8] = new Platform(8, 7, 7, .5);
  p[9] = new Platform(17, 7, 5, .5);

  // Row 4 start screen
  p[10] = new Platform(3, 9, 17, .5);

  // Maze
  p[11] = new Platform(33, 5, 2, .5);
  p[12] = new Platform(33, 7, 4, .5);
  p[13] = new Platform(35, 3, 1, .5);
  p[14] = new Platform(36, 5, 8, .5);
  p[15] = new Platform(37, 2, 1, .5);
  p[16] = new Platform(38, 7, 6, .5);
  p[17] = new Platform(41, 2, 1, .5);
  p[18] = new Platform(43, 3, 1, .5);
  p[19] = new Platform(45, 7, 9, .5);
  p[20] = new Platform(47, 3, 1, .5);
  p[21] = new Platform(49, 6, 3, .5);  
  p[22] = new Platform(52, 3, 1, .5);
  p[23] = new Platform(53, 5, 3, .5);
  p[24] = new Platform(56, 3, 1, .5);
  p[25] = new Platform(57, 5, 3, .5);

// Full
  // Maze part of the level
  p[26] = new Platform(23, 1, 9, 1);
  p[27] = new Platform(23, 2, 9, 1);
  p[28] = new Platform(23, 3, 9, 1);
  p[29] = new Platform(23, 4, 9, 1);
  p[30] = new Platform(23, 5, 9, 1);

  p[31] = new Platform(23, 7, 9, 1);
  p[32] = new Platform(23, 8, 9, 1);
  p[33] = new Platform(23, 9, 9, 1);
  p[34] = new Platform(23, 10, 9, 1);

  p[35] = new Platform(33, 1, 19, 1);

  p[36] = new Platform(33, 2, 1, 1);
  p[37] = new Platform(33, 3, 1, 1);
  p[38] = new Platform(33, 4, 1, 1);

  p[39] = new Platform(33, 8, 1, 1);
  p[40] = new Platform(33, 9, 1, 1);
  p[41] = new Platform(33, 10, 1, 1);

  p[42] = new Platform(35, 2, 1, 1);

  p[43] = new Platform(35, 9, 5, 1);
  p[44] = new Platform(35, 10, 5, 1);

  p[45] = new Platform(39, 2, 1, 1);
  p[46] = new Platform(39, 3, 1, 1);
  p[47] = new Platform(39, 4, 1, 1);

  p[48] = new Platform(41, 9, 7, 1);
  p[49] = new Platform(41, 10, 7, 1);

  p[50] = new Platform(43, 2, 1, 1);

  p[51] = new Platform(43, 6, 1, 1);

  p[52] = new Platform(45, 3, 1, 1);
  p[53] = new Platform(45, 4, 1, 1);
  p[54] = new Platform(45, 5, 1, 1);
  p[55] = new Platform(45, 6, 1, 1);

  p[56] = new Platform(47, 2, 1, 1);

  p[57] = new Platform(49, 2, 3, 1);
  p[58] = new Platform(49, 3, 3, 1);
  p[59] = new Platform(49, 4, 3, 1);
  p[60] = new Platform(49, 5, 3, 1);

  p[61] = new Platform(49, 9, 4, 1);
  p[62] = new Platform(49, 10, 4, 1);

  p[63] = new Platform(52, 8, 1, 1);

  p[64] = new Platform(53, 1, 3, 1);
  p[65] = new Platform(53, 2, 3, 1);
  p[66] = new Platform(53, 3, 3, 1);
  p[67] = new Platform(53, 4, 3, 1);

  p[68] = new Platform(55, 7, 1, 1);
  p[69] = new Platform(55, 8, 1, 1);
  p[70] = new Platform(55, 9, 1, 1);
  p[71] = new Platform(55, 10, 1, 1);

  p[72] = new Platform(57, 3, 3, 1);
  p[73] = new Platform(57, 4, 3, 1);

  p[74] = new Platform(57, 7, 1, 1);
  p[75] = new Platform(57, 8, 1, 1);
  p[76] = new Platform(57, 9, 1, 1);
  p[77] = new Platform(57, 10, 1, 1);

  p[78] = new Platform(59, 7, 2, 1);
  p[79] = new Platform(59, 7, 3, 1);
  p[80] = new Platform(59, 7, 4, 1);
  p[81] = new Platform(59, 7, 5, 1);
}

void displaylvl2() {
  
}
