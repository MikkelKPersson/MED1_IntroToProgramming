ball[]ballRow = new ball [1];

float display_lw=100;
float fieldW;
Float fieldH;

int goalX=300;
int goal1Y=50;
int goal2Y=900;
int goalL=200;
int goalH=50;

float line1X=350;
float line2X=350;
float line1Y=110;
float line2Y=885;
int lineL=100;
int lineH=5;



float ballX=400;
float ballY=500;
float stepX=10;
float stepY=10;
int r=50;

float key1X=2;

int score1=0;
int score2=0;


boolean [] keys = new boolean[128];

void setup(){
  size(800,1000);
  ballRow[0] = new ball(400,500,50);
  fieldW=width-display_lw;
  fieldH=height-display_lw;
  }

void draw(){
  //interface'
  
  background(#C7E7EA);
  move(); 
  
  
  strokeWeight(3);
  stroke(0);
  fill(#FFFFFF);
  rect(display_lw,display_lw,fieldW-display_lw,fieldH-display_lw,20);
  rect(goalX,goal1Y,goalL,goalH);
  rect(goalX,goal2Y,goalL,goalH);
  
  rect(line1X,line1Y,lineL,lineH);
  rect(line2X,line2Y,lineL,lineH);  
  textSize(100);
  textAlign (CENTER);  
  
   fill(#FFA005);
   rect(fieldW,0,display_lw,display_lw);
   fill(0);
   text(score1, fieldW+display_lw/2,display_lw-10); 
  
   fill(#FFA005);
   rect(fieldW,height-display_lw,display_lw,display_lw);
   fill(0);
   text(score2, fieldW+display_lw/2,height-10); 
   
   textAlign(CORNER);
   textSize(40);
   
   text("Player 1 Controls: A , S",10,40);
   text("Player 2 Controls: K , L",10,990);
//ball + movement

ballRow[0].display();
ballRow[0].bounce();
   

   

  

}

 void move() {
   //linemovement player 1
       if(keys ['s'] == true)
       line1X=line1X+10;
       
       if (keys ['a'] == true)
       line1X=line1X-10; 
  
  //linemovement player 2
       if(keys ['l'] )
       line2X=line2X+10;
       
       if (keys ['k'])
       line2X=line2X-10; 
       
  }

void keyPressed(){ 
    keys[key] = true ;
}

void keyReleased(){  
    keys[key] = false;
}
