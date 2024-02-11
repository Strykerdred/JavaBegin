/// Om deze quest te voltooien moet de speler 10 goblins killen ///
int Goblin = 9;
boolean TenGoblins = false;

if (Goblin == 10){
  TenGoblins = true;
println("Je hebt 10 Goblins vermoord, Hierbij krijg je 30 copper coins");
}
else if (Goblin <10){
println("Sorry maar er zijn nogsteeds teveel Goblins. Vermoord er nogmeer!");
}

/// Er vraagt iemand om 30 copper coins, toevallig heb je die ///
int CopperCoin = 30;
boolean GiftCoin = false;

if (CopperCoin == 0){
  GiftCoin = true;
  println("Bedankt voor deze donatie ooit zal ik je terug betalen!!");
}
else if (CopperCoin > 1){
  println("*Je hebt een schuld gevoel en kan niet verder zonder de 30 coins gegeven tehebben*");
}

/// Je mist 2xp om level-up tegaan je moet 1 wolf killen! ///

int Xp = 498;
boolean LevelUp = false;

if (Xp == 500){
 LevelUp = true;
 println("Ding Ding Ding!! Levelup!! ");
}

else if (Xp < 500){
  println("Ik ben nog niet level-up gegaan... Misschien toch maar een wolf zoeken...");
}
