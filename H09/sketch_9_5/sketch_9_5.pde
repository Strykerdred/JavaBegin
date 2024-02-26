String zin;

void setup(){
zin = echtvol("Hallo", "ik ben", "heel erg", "moe");
println(zin);
}

void draw(){
  
}

String echtvol(String a, String b, String c, String d){
  String antwoord;
  antwoord = a + " " + b + " " + c + " " + d + " ";
  return antwoord;
}
