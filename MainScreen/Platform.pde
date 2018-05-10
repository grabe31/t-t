class Platform {
  float c,r,w,h; // Column, row, width, height
  
  Platform(float startC, float startR, float startW, float startH) {
   c = startC;
   r = startR;
   w = startW;
   h = startH;
  }
  
  void display() {
   fill(100);
   rect((c*60), (r*60), (w*60), (h*60)); //Draws platform
  }
}