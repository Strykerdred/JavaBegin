

void setup(){
size(200,200);
}

void draw(){
background(255,255,255);

int c= 100;
for (int i = 0; i <= 5; i++) {
  ellipse(100,100,c,c);
  c -= 20;

}

}
