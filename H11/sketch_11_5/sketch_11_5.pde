boolean found;
String[] namen = {"nick", "nino", "jan", "justin", "john", "jaap"};

void setup(){
  found = false;
    for (int i = 0; i < namen.length; i++) {
    if (namen[i] == ("jan")) {
      found = true;
    }
     
  }
 println(found);
}
