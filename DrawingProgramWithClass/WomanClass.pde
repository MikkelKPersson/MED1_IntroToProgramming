class Woman{
  PImage Woman;
  int x;
  int y;
  int size;

Woman(){
  Woman=loadImage("Woman.PNG");
}
  void display(int size, int x, int y){
   image(Woman,x,y,size,size);    
  }

}
