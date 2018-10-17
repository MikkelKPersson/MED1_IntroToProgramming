Flower flower1;
Flower flower2;
Flower flower3;

void setup() {
  size(1600,800);
  background(#43AF76);
  
  int _r1=60;
  int _pedals =7;
  float _x=width/2;
  float _x2=300;
  float _x3=1300;
  float _y=height/2;
  int _pedalColor=#FFA000;
  
  flower1 = new Flower(_r1,_pedals,_x,_y,_pedalColor);
  flower2 = new Flower(_r1,_pedals,_x2,_y,_pedalColor);
  flower3 = new Flower(_r1,_pedals,_x3,_y,_pedalColor);
  
  
}

void draw(){
  flower1.display();
  flower2.display();
  flower3.display();
}
