import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup (){
  size(800,800);
  
  
   cp = new ControlP5(this);
   
   knop1 = cp.addButton("knop1")
                 .setPosition(600,600)
                 .setSize(200,200)
                 .setCaptionLabel("Klik Mij");
                 
   knop2 = cp.addButton("knop2")
                  .setPosition(0,600)
                  .setSize(200,200)
                  .setCaptionLabel("Klik Mij");

}

void draw(){
 background (0); 
}

void knop1(){
 println("Goed gedaan!"); 
}
void knop2(){
  println("Helaas fout!");
}
