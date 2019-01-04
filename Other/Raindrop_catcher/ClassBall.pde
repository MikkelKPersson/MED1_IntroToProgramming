class Ball{
  float r; //radius
  float x, y; //location
  float xSpeed, ySpeed; //speed
  color c = color(100, 50); //color
  
  Ball(float tempR) {
    
    r=tempR;
    
    x=random(width);
    y=random(height);
    
    xSpeed = random(-5,5);
    ySpeed = random(-5,5);
  } 
  
  void move() {
    x += xSpeed;
    y += ySpeed;
    
    //check horisontal edges
    if (x>width || x<0){
      xSpeed *= -1;
    }
    //Check vertical edges
    if(y>height || y<0) {
      ySpeed *= -1;
    }
  }
  
    void highlight() {
    c= color(0,150);
  }
  
  
  //draw the ball
  void display() {
    stroke(0);
    fill(c);
    ellipse(x,y,r*2, r*2);
    c = color(100, 50);
    
  }
  

  boolean intersect(Ball b) {
    float distance =dist(x, y, b.x, b.y);
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  } 
}
