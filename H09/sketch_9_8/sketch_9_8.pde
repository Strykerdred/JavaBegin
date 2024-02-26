void setup() {
  size (500, 500);
}




void draw() {
  background(255,255,255);
  tekenDriehoek (100,200,250,400,400,200);
  
  
}


void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
    // teken een driehoek m.b.v. de meegegeven data (parameters)


//line1
line(x1, y1, x3, y3);
//line2
line(x1, y1, x2, y2);
//line3
line(x2, y2, x3, y3);

}
