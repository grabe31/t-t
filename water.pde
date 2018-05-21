class Water{
  float x, y, y2, w, h;
  int rise;
  
  
  Water(){
   x=width/2;
   y=height-50;
   w=width;
   h=150;
   rise=1;
   y2=height;
    
    
    
    
  }
  
  
  
  
  
  void display(){
  fill(136, 129, 245);
  rect(x, y, w, h);
  fill(24, 16, 144);
  rect(x, y2, w, h/2);
   y=y+rise;
 
 if(y<height-70 || y>height-50){
   rise=-rise;
 }
    
  
  
  
  
}

} // end class