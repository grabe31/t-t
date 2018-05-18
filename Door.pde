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