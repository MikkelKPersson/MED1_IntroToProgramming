
void setup() {
  size(1600,800);
  background(#43AF76);
}

void draw(){
  flower(60,4,150,150,300);
    flower(60,7,400,400,300);
}

void flower(float r, int n_petals, float x, float y, int petalcolor) {
float ballX;
float ballY;
  
  fill(petalcolor,0,0);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX = x + r*cos(i);
  ballY = y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}  
 
