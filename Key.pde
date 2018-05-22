class Key{
  float keyX, keyY;
  
  boolean collected=false;
  
  Key(int startC, int startR){ // constructor; 
   keyX = startC;
   keyY = startR;
  }
  void display(){             // key animation and location
    noFill();
    noStroke();
    image(KEYimg, keyX, keyY);
    move();
  }
  
  void pickUp(){              // Remove key from environment and place in character's inventory; declare key true so first door encountered opens and key is removed from inventory
    if(t.x < keyX+20 && t.x > keyX-20 && t.y < keyY+20 && t.y > keyY-20 && collected == false){
      keyCount = keyCount + 1;
      collected = true;
      keyY = -2000;
      println(keyCount);
    }
  }
    void move(){
    if(right==true){
      x=x-t.xspeed;
  }
  if(left == true){
    x=x+t.xspeed;
  }
 } 
}