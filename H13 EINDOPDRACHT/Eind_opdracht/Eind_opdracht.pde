import processing.sound.*;

int[] upgrades = new int [5];
boolean[] activatedUpgrades = {false, false, false, false, false};

SoundFile heeho;
int cookie;
PImage img;
PImage bg;
PImage tpose;
int currentUpgradeIndex = 0;



boolean heeHoPerSec = false;
boolean clickTwo = false;
boolean trippleHeeHooPerSec = false;
boolean clickThree = false;
boolean endGame = false;


void setup(){

    upgrades[0] = 10;       //10 cookies = 1 hee-ho a sec
    upgrades[1] = 100;      //100 cookies = 2 cookies a click
    upgrades[2] = 500;      //500 cookies =  3 cookies a second
    upgrades[3] = 1000;     //1000 cookies = 3 cookies a click
    upgrades[4] = 10000;    //The end
       

    size(800,800);
    bg = loadImage("background.png");
    img = loadImage("heeho.png");
    
      heeho = new SoundFile(this, "sound.mp3");
      heeho.amp(0.5);
      heeho.play();
}



void draw(){
  background(0);
  frameRate(60);
  image(bg, 0,0);
  image(img, 300,300);
  fill(255);
  textSize(40);
  text(cookie, 400, 200);
  textAlign(CENTER);
  
  
}


void mousePressed() {
   if (mouseX >= 300 && mouseX <= 300 + img.width && mouseY >= 300 && mouseY <= 300 + img.height) { // x> grooter en x< dan 300 + foto breete
      cookie++;                                                                                         // en y > grooter en y<= + img hoogte
      println("Cookies: " + cookie);
      for(int i = 0; i < 5; i++){
         if(cookie >= upgrades[i]){
             activatedUpgrades[i] = true;
         }
      }
      
      
  if (activatedUpgrades [0] == true){
  /////
  }
  
  if (activatedUpgrades [1] == true){
   cookie ++; 
  }
  
    if (activatedUpgrades [2] == true){
   /// 
  }
  
    if (activatedUpgrades [3] == true){
   cookie +=2; 
  }
  
    if (activatedUpgrades [4] == true){
   /// 
  }
  
       //geluid
      float randomValue = random(1); 
      
      if (randomValue <= 0.01) {
        heeho.amp(1.0);
        println("we dead");
      } else {
        heeho.amp(0.05);
      }
 
    heeho.play();
   }
}
