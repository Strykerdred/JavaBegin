int spacebarcount = 0;
int countdown = 10;
int lastsec = 0;

void setup(){
     frameRate(60);
     size(500,200);
     lastsec = second();
}

void draw(){
  background(0,0,0);
      textSize(50);
      text ("Press the spacebar!!", CENTER,50);
          textSize(40);
          text (countdown+" "+"seconds", CENTER,100);
              textSize(70);
              text (spacebarcount, 200, 175);
  
                  
                  
int currentSecond = second();
if (currentSecond != lastsec) {
    countdown--;
    if (countdown == 0) {
        countdown = 10;
        spacebarcount = 0;
   }
    lastsec = currentSecond;
 }
}
  
void keyPressed(){
      if(keyCode == 32){
      spacebarcount++;
      println("ye");
      }else{
      println("");
     }
   }  

void keyReleased(){
      if(keyCode == 32){
      println("nuh");
      }else{
      println("");  
  }
}
 
