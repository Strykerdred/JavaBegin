import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

int student = 0;
int ouder = 0;

void setup (){
  size(800,800);
  textSize(30);
  
  
   cp = new ControlP5(this);
   
   knop1 = cp.addButton("knop1")
                 .setPosition(600,600)
                 .setSize(200,200)
                 .setCaptionLabel("Ouder");
                 
   knop2 = cp.addButton("knop2")
                  .setPosition(0,600)
                  .setSize(200,200)
                  .setCaptionLabel("Student");

}

void draw(){
 background (0);
 text (student+" Van de 200 studenten" , 240,400);
 text (ouder+" Van de 400 Ouders", 240, 450);
}

void knop1(){
  println("Ouder " + ouder++, "van de 400");
}

void knop2(){
  
  println("Student " + student++, "van de 200"); 
}
