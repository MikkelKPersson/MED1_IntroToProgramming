class Flower {
  //variables
  
  float r;       // radius of the flower pedal
  int n_pedals;  // number of pedals
  float x;       //x-position of the center of the flower
  float y;       //y-position of the center of the flower
  int pedalColor;// color of flower
  int moveX;    //movement of flower
  int moveY;    //movement of flower
  
  Flower(float temp_r, int temp_n_pedals, float temp_x, float temp_y, int temp_pedalColor, int temp_moveX, int temp_moveY) {
    r=temp_r;
    n_pedals = temp_n_pedals;
    x=temp_x;
    y=temp_y;
    pedalColor=temp_pedalColor;
    moveX=temp_moveX;
    moveY=temp_moveY;
  }
  
  void display() {
    float ballX;
    float ballY;
      
      fill(pedalColor);
      for (float i=0;i<PI*2;i+=2*PI/n_pedals) {
        ballX = x + r*cos(i);
        ballY = y + r*sin(i);
        ellipse(ballX,ballY,r,r); 
      }
      fill(200,0,0);
      ellipse(x,y,r*1.2,r*1.2);
      x = x + moveX;
      y = y + moveY; 
   } 
  void bounce(){
    if (x <= 0 || x >= width){
        moveX=-moveX;
      }  
      if (y <= 0 ||  y >= height){
        moveY=-moveY;
      }
  }
}  
  
  
  
 
