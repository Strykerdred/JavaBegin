float x1, y1, x2, y2;

void setup(){
  size(600, 400);
  background(255);
    x1 = mouseX;
    y1 = mouseY;
    x2 = mouseX;
    y2 = mouseY;
}

void draw(){
  stroke(0);        //breede lijn
  if (mousePressed && mouseButton == LEFT) {
      line(x1, y1, x2, y2);
      x1 = x2;
      y1 = y2;
      x2 = mouseX;
      y2 = mouseY;
 }
}
