/// Als je "a = false" > "a = true" maakt klopt het niet meer \\\
boolean a = false;
boolean b = true;
boolean c = true;
boolean d = false;

if(a == false && d == false && c == true ||
c == false && a == false){
  
println ("Dit antwoord is goed omdat de eerstelijn 3 statement die goed zijn heeft.");
println ("De 2de lijn c == true niet false");
}
