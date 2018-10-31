class ball{
  //Variables
  float ballX;
  float ballY;
  float stepX=5;
  float stepY=5;
  int r;
  
  ball(float temp_ballX, float temp_ballY, int temp_r) {
    ballX=temp_ballX;
    ballY=temp_ballY;
    r=temp_r;
  }
  void display() {
   fill(#FFA005);
   ellipse(ballX,ballY,r,r);
   ballX += stepX;
   ballY += stepY;
  }
  void bounce() {
    if(ballX > fieldW-r/2 || ballX < display_lw+r/2) {
      stepX = -stepX;
    }  
    if(ballY < display_lw+r/2 || ballY > height-display_lw-r/2 ){
      stepY = -stepY;
    }
    if(ballX > line1X && ballX < (line1X+lineL) && ballY < 115+r/2 && ballY > 100-r/2){
      stepY = -stepY;
      n_balls=n_balls+1;
    }
    
     if(ballX > line2X && ballX < (line2X+lineL) && ballY > 885-r/2 && ballY < 900-r/2){
     stepY = -stepY;
     n_balls=n_balls+1;
    }
    
     if( ballX > 300 && ballX < 500 && ballY > 900-r/2) {
      score1 += 1;
      ballX=400;
      ballY=500;
      n_balls=n_balls-1;
      
    }
    
     if( ballX > 300 && ballX < 500 && ballY < 100+r/2) {
      score2 += 1;
      ballX=400;
      ballY=500;
      n_balls=n_balls-1;
     
     }
  }
}
