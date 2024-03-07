import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;
Button knop4;

Textfield tekstveld1;
Textfield tekstveld2;




void setup(){
  size(400,250);
  background(255,255,255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  knop1.setPosition(165, 50);
  knop1.setCaptionLabel("*");
  knop1.setSize(30,30);
  
  knop2 = cp.addButton("Knop2");
  knop2.setPosition(195, 50);
  knop2.setCaptionLabel("/");
  knop2.setSize(30,30);
  
  knop3 = cp.addButton("Knop3");
  knop3.setPosition(225, 50);
  knop3.setCaptionLabel("+");
  knop3.setSize(30,30);
  
  knop4 = cp.addButton("Knop4");
  knop4.setPosition(255, 50);
  knop4.setCaptionLabel("-");
  knop4.setSize(30,30);
  
  
tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(50,50)
                .setSize(50,30)
                .setText("")
                .setCaptionLabel("Getal 1")
                .setColorLabel(color(255,0,0));                
                
tekstveld2 = cp
                .addTextfield("TextInput2")
                .setPosition(110,50)
                .setSize(50,30)
                .setText("")
                .setCaptionLabel("Getal 2")
                .setColorLabel(color(255,0,0));
}

int result = 0;

void Knop1() {
  int value1 = Integer.parseInt(tekstveld1.getText());
  int value2 = Integer.parseInt(tekstveld2.getText());
  result = value1 * value2;
}

void Knop2() {
  int value1 = Integer.parseInt(tekstveld1.getText());
  int value2 = Integer.parseInt(tekstveld2.getText());
  result = value1 / value2;
}

void Knop3() {
  int value1 = Integer.parseInt(tekstveld1.getText());
  int value2 = Integer.parseInt(tekstveld2.getText());
  result = value1 + value2;
}

void Knop4() {
  int value1 = Integer.parseInt(tekstveld1.getText());
  int value2 = Integer.parseInt(tekstveld2.getText());
  result = value1 - value2;
}

void draw() {
  background(255);
  fill(0);
  textSize(20);
  text("antwoord: " + result, 50, 150);
}



//old code idk what i did wrong

//  void Knop1(){
//  println(tekstveld1.getText * tekstveld2.getText());
//}
 // void Knop2(){
//  println(tekstveld1.getText / tekstveld2.getText());
//}
//  void Knop3(){
//  println(tekstveld1.getText + tekstveld2.getText());
//}
//  void Knop4(){
//  println(tekstveld1.getText - tekstveld2.getText());
//}
