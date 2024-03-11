int x = 250;
int y = 250;
int size = 50;
int xmap = 0;
int ymap = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  fill(0);
  rectMode(CENTER);
  rect(x, y, size, size);
}

void keyPressed(){
  if (keyCode == UP){
    y -= 10;
  } else if (keyCode == DOWN){
    y += 10;
  } else if (keyCode == LEFT){
    x -= 10;
  } else if (keyCode == RIGHT){
    x += 10;
  }
}
