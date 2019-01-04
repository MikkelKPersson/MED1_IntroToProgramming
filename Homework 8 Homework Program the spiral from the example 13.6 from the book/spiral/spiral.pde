float r = 0.0;
float theta1 = 00.0;
float theta2 = 33.3;
float theta3 = 66.6;
float perlinNoise= noise(r)*50;




void setup() {
fullScreen();
background(255);
}
void draw() {


  for(int i=0;i<5000;i++){

  float midX=width/2;
  float midY=height/2;
  
float x = r * -cos(theta1);
float y = r * sin(theta1);
noStroke();
//fill(cos(theta1)*100+155,cos(theta2)*100+155,(cos(theta3))*100+155);
fill(cos(theta1)*100+155,cos(theta1)*100+155,255);

ellipse(x + midX, y + midY, noise(r)*50, noise(r)*50); 
// Increment the angle

theta1 += 0.01;
theta2 += 0.01;
theta3 += 0.01;
r += 0.1;
  }
noLoop();
}
