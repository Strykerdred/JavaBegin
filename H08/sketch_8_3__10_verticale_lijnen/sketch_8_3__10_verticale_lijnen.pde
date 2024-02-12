size(300, 300);
background(255, 255, 255);

// De 10 is voor hoeveel lijnen hij moet maken //

for (int i = 0; i < 10; i++) {
  strokeWeight(5);
  line(i * 15 + 5, 10, i * 15 + 5, 290);
  
}
