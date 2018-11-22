// A polar coordinate
float r = 0.0;
float theta1 = 0.0;
float theta2 = 33.3;
float theta3 = 66.6;
float i =1;

void setup() {
  frameRate(10000);
fullScreen();
background(255);
}
void draw() {
float x = r * -cos(theta1);
float y = r * sin(theta1);
noStroke();
fill(cos(theta1)*100+155,cos(theta2)*100+155,(cos(theta3))*100+155);
ellipse(x + width/2, y + height/2, r, r); 
// Increment the angle
i += 0.01;
theta1 += 0.01*i;
theta2 += 0.01*i;
theta3 += 0.01*i;
r += 0.01;
}
