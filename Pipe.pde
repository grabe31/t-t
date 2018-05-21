class Pipe{
 float[] nx;
 float[] ny;
 float[] x;
 float[] y;
 float[] w;
 float[] h;
 float[] gap;
 int count=0;
 stream s;  
 boolean left;
  
  
  Pipe(float tx, float ty, boolean tleft){
    left=tleft;
     x= new float[6];
     nx= new float[6];
     ny= new float[6];
     y= new float[6];
     w= new float[6];
     h= new float[6];
     gap= new float[6];
     if(left){
     gap[0]=random(-90, -50);
     }
     else{
       gap[0]=random(50, 90);
     }
     nx[0]=tx;
     ny[0]=ty;
     for(int i=1; i<x.length; i=i+1){
       if(random(1)<=0.5){
       if(left){
     gap[i]=random(-90, -50);
     }
     else{
       gap[i]=random(50, 90);
     }
        //if(random(1)<0.5){
        nx[i]=nx[i-1]+gap[i];
        ny[i]=ny[i-1];
        x[i]=nx[i-1]+(gap[i]/2);
        y[i]=ny[i-1];
        w[i]=gap[i]/2; 
        h[i]=25;
      }
      else{
        gap[i]=random(50, 90);
        nx[i]=nx[i-1]; 
        ny[i]=ny[i-1]+gap[i];
        x[i]=nx[i-1];
        y[i]=ny[i-1]+(gap[i]/2);
        w[i]=25; 
        h[i]=gap[i]/2;
       
      }
     }
    
     s=new stream(nx[5], ny[5]+25);
    
    
  }
  
  
  
  
  void display(){
    fill(140);
    stroke(60);
    strokeWeight(5);
    
    
    for(int i=0; i<x.length; i++){
    rect(x[i], y[i], w[i], h[i]);
   }
   
    for(int i=0; i<x.length; i++){
       rect(nx[i], ny[i], 35, 35);
    }
      stroke(0);
        s.display();
   } 

}