int een = 0;
int twee = 0;
int drie = 1;

for(int i = 0; i < 10; i++){
  een = twee + drie;
  println(een);
  twee = drie;
  drie = een;
  
}
