treasure treasure;
PImage sword;
PImage vase;


void setup(){
 size(400,400); 
  treasure = new treasure(5,5);
sword = loadImage("knife.png");
vase = loadImage("vase.png");

sword.resize(40,40);
vase.resize(30,30);

imageMode(CENTER); 
}

void draw(){
  background(0);
  treasure.score();
  treasure.taf();
    
     fill(255);
  ellipse(mouseX,mouseY, 40,40); 

}