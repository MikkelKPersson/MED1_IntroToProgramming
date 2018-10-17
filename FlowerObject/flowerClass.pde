class Flower {
  //variables
  
  float r;       // radius of the flower pedal
  int n_pedals;  // number of pedals
  float x;       //x-position of the center of the flower
  float y;       //y-position of the center of the flower
  int pedalColor;// color of flower
  
  Flower(float temp_r, int temp_n_pedals, float temp_x, float temp_y, int temp_pedalColor) {
    r=temp_r;
    n_pedals = temp_n_pedals;
    x=temp_x;
    y=temp_y;
    pedalColor=temp_pedalColor;
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
    }  
}  
  
  
  
 
