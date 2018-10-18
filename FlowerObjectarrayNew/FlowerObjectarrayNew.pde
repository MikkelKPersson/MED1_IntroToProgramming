Flower[]FlowerRow = new Flower [6]; //flower array
int n_flowers = FlowerRow.length;
Flower flower1;
void setup() {
  size(1600, 800);


  int _r1=60;
  int _pedals =7;
  float _x=width/2;
  float _y=height/2;
  int _pedalColor=#FFA000;



  print(FlowerRow.length);

  float fSpace=width/n_flowers;
  //float stepHalf=step/2;

  for (int i = 0; i<n_flowers; i +=1) {
    FlowerRow[i] = new Flower (_r1, _pedals, fSpace*(i+.5), _y, _pedalColor);
//flower1 = new Flower(_r1, _pedals, _x, _y, _pedalColor);
    // flower2 = new Flower(_r1,_pedals,_x2,_y,_pedalColor,_moveX2,_moveY2);
    // flower3 = new Flower(_r1,_pedals,_x3,_y,_pedalColor,_moveX3,_moveY3);
  }
}

void draw() {
  background(#43AF76);
  for (int i = 0; i<n_flowers; i +=1) {
    FlowerRow[i].display();
   
  }

  //  flower1.display();
  //  flower2.display();
  //  flower3.display();
  //  flower1.bounce();
  //  flower2.bounce();
  //  flower3.bounce();
}
