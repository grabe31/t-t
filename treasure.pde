class treasure{

int score = 0;
int points = 100;
int totalscore = score;
  float vaseX = 200;
  float vaseY = 200;
  float knifeX = 100;
  float knifeY = 100;
  float x,y;
       boolean collect,collected;      
//collect is for knife/sword image
//collected is for vase image

treasure(int startC, int startR){
 x = startC;
  y = startR; 
  collect = true;//knife/sword is dispayed
collected = true;//vase is displayed

}

void taf(){// from true to false
  if(collect){//remove knife/sword if collect becomes false
    t1();
  }
  if(collected){//remove vase if collected becomes false
   t2(); 
  } 

}

void score(){
  
  /*if(mouseX+16 >= knifeX-25 && mouseX-16 <= knifeX+25 && mouseY+16 >= knifeY-15 && mouseY-16 <= knifeY+15){
   collect = false;//removes knife
   score = score + points;
   knifeY = -200;
  }
  
    if(mouseX+14 >= vaseX-20 && mouseX-14 <= vaseX+20 && mouseY+14 >= vaseY-20 && mouseY-14 <= vaseY+15 ){
     collected = false; //removes vase
    score = score + points ; // adds points to player score
    vaseY = -200;
  }*/
  
    if(t.x+16 >= knifeX-25 && t.x-16 <= knifeX+25 && t.y+16 >= knifeY-15 && t.y-16 <= knifeY+15){
   collect = false;//removes knife
   score = score + points;
   knifeY = -200;
  }
  
    if(t.x+14 >= vaseX-20 && t.x-14 <= vaseX+20 && t.y+14 >= vaseY-20 && t.y-14 <= vaseY+15 ){
     collected = false; //removes vase
    score = score + points ; // adds points to player score
    vaseY = -200;
  }
  
      fill(255);//color of the score
  text(score,200,50); //points collected
}

  void t1(){//knife/sword
   imageMode(CENTER);
   image(sword,knifeX,knifeY);
   move();
  }
  void t2(){//vase
    image(vase, vaseX, vaseY);
    move();
  }
 
  void move(){
   if (right == true){
    x = x - t.xspeed; 
   }
   if(left == true){
    x = x - t.ndxspeed; 
   }
  }
}