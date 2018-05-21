class Door{
  float doorX, doorY, doory, doorSpeed = 2;
  
  boolean doorOpen = false;
  boolean doorMove = false;
  
  Door(int startC, int startR){ //constructor
   doorX = startC;
   doorY = startR;
   doory = startR-60;
   sy = startR * 60;
  }
  void display(){         // door animation and location
    noFill();
    noStroke();
    image(DOORimg, doorX, doorY);
    fill(0);
    rect(doorX, doory, 60, 60);
   
    if(doorOpen == false){
    boolean rectangleIntersect(Troll r1, Door r2) {
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
}
    
    
  }
  
  void unlock(){
    if(keyCount > 0 && x >= doorX-60 && y == doorY){
      doorY = doorY - doorSpeed;
      doorMove = true;
    }
    if(doorMove == true){
        doorY = doorY - doorSpeed;   
    }
     if(doorY <= doory && doorOpen == false){
       keyCount = keyCount - 1;
       doorOpen = true;
       doorMove = false;
       println(keyCount);
   }
  }
 }