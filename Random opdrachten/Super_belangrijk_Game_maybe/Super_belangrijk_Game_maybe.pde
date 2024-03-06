  float x = 200;
  float y = 0;
  int score = 0;
  
  
void setup(){
 size(500,500);
 textSize(30);
 fill(0,0,0);
}

void draw(){
  background(0,200,0);
  y = y + 3;
  x = x + 0;
  println("aanroep " + frameCount);
  text ("Hallo", x,y);
  text ("Score:"+score,10,30);
  
  if (y > height) {
  y = 0;
  x = random(100,400);
  score++;
  //if (x > width)
  //x = random(100,400);
  }

  
}
