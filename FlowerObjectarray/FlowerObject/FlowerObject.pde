Flower flower1;
Flower flower2;
Flower flower3;

void setup() {
  size(1600,800);
 
  
  int _r1=60;
  int _pedals =7;
  float _x=width/2;
  float _x2=300;
  float _x3=1300;
  float _y=height/2;
  int _pedalColor=#FFA000;
  int _moveX1=2;
  int _moveX2=-1;
  int _moveX3=-3;
  int _moveY1=-2;
  int _moveY2=1;
  int _moveY3=2;  
  flower1 = new Flower(_r1,_pedals,_x,_y,_pedalColor,_moveX1,_moveY1);
  flower2 = new Flower(_r1,_pedals,_x2,_y,_pedalColor,_moveX2,_moveY2);
  flower3 = new Flower(_r1,_pedals,_x3,_y,_pedalColor,_moveX3,_moveY3);
  
  
}

void draw(){
  background(#43AF76);
  flower1.display();
  flower2.display();
  flower3.display();
  flower1.bounce();
  flower2.bounce();
  flower3.bounce();
}
