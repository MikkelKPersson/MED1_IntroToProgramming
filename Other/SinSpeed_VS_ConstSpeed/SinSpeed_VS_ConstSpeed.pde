float thetaX=0;
float thetaY=0;
int r=50;
float constX=250;
float constSpeed=2/(TWO_PI/0.01)*500;


void setup(){
  size(500,500);
  

}
void draw(){
    background(255);
    float sinX=map(sin(thetaX),-1,1,0,500);
    ellipse(sinX,250,r,r);
    
    constX+=constSpeed;
    ellipse(constX,400,r,r);
    if(constX>width || constX<0){
    constSpeed= -constSpeed;
 
  }
   println(constSpeed);
     thetaX+=0.01; 
}
