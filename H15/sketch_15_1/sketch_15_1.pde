class Rectangle {
  int x = 200;
  int y = 200;
  int w = 100;
  int h = 80; 
  
  void display() {
    rect(x, y, w, h);
  }
}

Rectangle rect1;

void setup() {
  size(500, 500);
  rect1 = new Rectangle();
}

void draw() {
  background(255,255,255);
  rect1.display(); 
}
