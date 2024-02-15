int getal;

void setup(){
  size(500,500);
  
getal = hetgetal(10, 30);
println(getal);


}

void draw(){
  background(255,255,255);
  line(100,100,100,400);
  line(400,100,100,100);
  line(400,400,400,100);
  line(100,400,400,400);
  
}

int hetgetal (int getaleen, int getaltwee){
  int antwoord = (getaleen + getaltwee)/2;
  return antwoord;
  
}
