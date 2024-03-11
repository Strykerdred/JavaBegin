
void setup(){
   size (800,800); 
}


void draw(){
   background(0); 
     fill(random(255), random(255), random(255));
     rect(mouseX+5, mouseY+5, 50,50);
       fill(random(255), random(255), random(255));
       rect(mouseX-55, mouseY-55, 50,50);
         fill(random(255), random(255), random(255));
         rect(mouseX+5, mouseY-55, 50,50);
           fill(random(255), random(255), random(255));
           rect(mouseX-55, mouseY+5, 50,50);
}


void mouseMoved(){
    println("x" + mouseX + " " + "y" + mouseY); 
}
