import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(800,800);
  background(255,255,255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  
  knop1.setCaptionLabel("Test");
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setText("Prijs!")
                .setCaptionLabel("Type je prijs! in Euro")
                .setColorLabel(color(255,0,0));
}


void draw(){

}

void Knop1() {
  float prijs = Float.parseFloat(tekstveld1.getText());
  float prijsInclBTW = prijs * 1.21;
  println("Uw prijs incl BTW is: " + prijsInclBTW + " Euro");
}
