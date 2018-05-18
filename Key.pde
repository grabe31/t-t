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
  }
  
  void pickUp(){              // Remove key from environment and place in character's inventory; declare key true so first door encountered opens and key is removed from inventory
    if(x < keyX+20 && x > keyX-20 && y < keyY+20 && y > keyY-20 && collected == false){
      keyCount = keyCount + 1;
      collected = true;
      keyY = -2000;
      println(keyCount);
    }
  }
}