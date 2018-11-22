// A polar coordinate
float r = 0.0;
float theta1 = 0.0;
float theta2 = 33.3;
float theta3 = 66.6;
float i =0.05;
float perlinNoise= noise(r)*50;


void setup() {
  frameRate(10000);
fullScreen();
background(255);
}
void draw() {
  float midX=width/2;
  float midY=height/2;
  
float x = r * -cos(theta1);
float y = r * sin(theta1);
noStroke();
//fill(cos(theta1)*100+155,cos(theta2)*100+155,(cos(theta3))*100+155);
fill(cos(theta1)*100+155,cos(theta1)*100+155,255);

ellipse(x + midX, y + midY, noise(r)*50, noise(r)*50); 
// Increment the angle
i += 0.01;
theta1 += 0.01;
theta2 += 0.01;
theta3 += 0.01;
r += 0.1;
}
