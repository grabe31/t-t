class Egg{
  float x, y;
  int timer = 300;
  
  Egg(int startC, int startR){
   x = startC;
   y = startR;
  }
 void timer(){
   if (CretinG.egg == true){
     timer = timer - 1;
   }
  // if (timer <= 150){
  //  CretinG.cretinG = loadImage("BEG.png");
  //  //background(0);
  //  image(CretinG.cretinG, x, y);
   if (timer == 0){
   CretinG.egg = false;
    CretinG.cretinG = loadImage("CGL.png");
    image(CretinG.cretinG, x, y);
    timer = 300;
   // background(0);
   }
 }
}