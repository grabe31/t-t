class stream{
  float x, x2, y, w, h;
  float offset;

  
  stream(float tx, float ty){
    offset=2.5;
    y=ty;
    x=tx;
    x2=tx+offset;
    w=30;
    h=5;
  }
  
  
  
  void display(){
    noStroke();
    
    for(int i=0; i<height-y-60; i=i+8){
    fill(75, 155, 249);
    rect(x+offset, y+i, w, h);
    rect(x-offset, y+i+4, w, h);
    }
    
    if(frameCount%10==0){
    offset=-offset;
    }
  }
  
 
    
    
  }
  