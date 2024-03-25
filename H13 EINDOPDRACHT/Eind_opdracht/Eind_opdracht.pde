import processing.sound.*;

SoundFile heeho;
int cookie;
int currentUpgradeIndex = 0;
int[] upgrades = new int [6];

int heehoasec1 = 1;
int heehoasec2 = 1;
int lastTime = 0;


PImage bg;
PImage tpose;
PImage Upgrade0;
PImage Upgrade1;
PImage Upgrade2;
PImage Upgrade3;
PImage Upgrade4;
PImage Upgrade5;



boolean heeHoPerSec = false;
boolean clickTwo = false;
boolean trippleHeeHooPerSec = false;
boolean clickThree = false;
boolean clickFive = false;
boolean jumpscare = false;
boolean[] activatedUpgrades = {false, false, false, false, false, false};

void setup(){
  size(800,800);

    //upgrade arrays
    upgrades[0] = 10;       //10 cookies = 1 hee-ho a sec
    upgrades[1] = 100;       //100 cookies = 2 cookies a click
    upgrades[2] = 500;       //500 cookies =  3 cookies a sec
    upgrades[3] = 1000;       //1000 cookies = 3 cookies a click
    upgrades[4] = 2500;       //idk yet maar = 5 cookies a click
    upgrades[5] = 10;       //jumpscare

       

    //Images
    bg = loadImage("background.png");
    tpose = loadImage("heeho.png");
    Upgrade0 = loadImage("Upgrade0.png");
    Upgrade1 = loadImage("Upgrade1.png");
    Upgrade2 = loadImage("Upgrade2.png");
    Upgrade3 = loadImage("Upgrade3.png");
    Upgrade4 = loadImage("Upgrade4.png");
    Upgrade5 = loadImage("Upgrade5.png");

   
    heeho = new SoundFile(this, "sound.mp3");
    heeho.amp(0.5);
    heeho.play();
}



void draw(){
  background(0);
  frameRate(60);
  image(bg, 0,0);
  image(tpose, 300,300);
  fill(255);
  textSize(40);
  text(cookie, 400, 200);
  textAlign(CENTER);
  
  //Upgrade icons
  
  if (activatedUpgrades[0]) {
  image(Upgrade0, 0, 750);
  textSize(15);
  text("1 Heeho/sec Unlocked", 125,775);
      int currentTime = millis(); // vorige keer gevraagd aan me, dit is hoeveel seconde sinds de skecht is opgestart
                if (currentTime - lastTime >= 1000) { // checked of er een seconde is geweest
                  cookie += heehoasec1; // Als er 1000 milli's zijn geweest +1 hee-ho
                  lastTime = currentTime; // update de laaste recorded tijd


    }
  }

    
  if (activatedUpgrades[1]) {
     image(Upgrade1, 0, 700);
  }
         
  if (activatedUpgrades[2]) {
     image(Upgrade2, 0, 650);
     textSize(15);
     text("3 Heeho/sec Unlocked", 125,675);
           int currentTime = millis();
                if (currentTime - lastTime >= 400) {
                cookie += heehoasec2;
                lastTime = currentTime;
  }
         
  if (activatedUpgrades[3]) {
     image(Upgrade3, 0, 600);
  }
         
  if (activatedUpgrades[4]) {
     image(Upgrade4, 0, 550);

  }
  
  if (activatedUpgrades[5]) {
  }

 }
}


void mousePressed() {
   if (mouseX >= 300 && mouseX <= 300 + tpose.width && mouseY >= 300 && mouseY <= 300 + tpose.height) { // x> grooter en x< dan 300 + foto breete
      cookie++;                                                                                         // en y > grooter en y<= + img hoogte
      println("Cookies: " + cookie);
      for(int i = 0; i < 5; i++){
         if(cookie >= upgrades[i]){
             activatedUpgrades[i] = true;
                 image(tpose, random(width), random(height)); // NO ITS A FEATURE
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
   cookie +=3; 
  }
  
      if (activatedUpgrades [5] == true){
   // Active above.
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
