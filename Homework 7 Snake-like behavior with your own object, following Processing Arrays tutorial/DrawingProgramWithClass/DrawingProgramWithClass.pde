Woman Woman;
PImage Tue;
int num=10;
int[] x = new int[num]; 
int[] y = new int[num]; 
int indexPosition = 0;
int randPos=40;

void setup(){
  size(1000,1000);
Woman=new Woman();
Tue=loadImage("Tue.png");
frameRate(24);
}

void draw(){
  background(255);
  indexPosition = (indexPosition + 1) % num;
  
x[indexPosition] = mouseX-100;    
y[indexPosition] = mouseY-100;

for(int i = 0; i < num-1; i++){             //i should be 0 and not indexPosition, as it will not work in that case
  int pos = (indexPosition + i) % (num);    //put paratethese around the valuables that are connected, num does not need it as it is one valuable.
                                            //% (module) set the beforewritten back to the beginning (num)
 Woman.display(200, int(x[pos]+random(-randPos,randPos)), int((y[pos])+random(-randPos,randPos)));    //displaying the Mickey, with the parameters to follow the for loop (i) and the mouse (x and y pos)
}
image(Tue,mouseX-50,mouseY-100, 150,200);
}
