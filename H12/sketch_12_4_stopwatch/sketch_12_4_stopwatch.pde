//CHATGPT zwaar gebruikt. wou mijn code niet pakken dus eind onderdeel is anders

boolean running = false;
int start;
int second = 0;
int millisecond = 0;

void setup() {
  size(500, 200);
  textAlign(CENTER, CENTER);
  textSize(32);
}

void draw() {
  background(0);
  fill(255);
  text("Press SPACE to start/stop timer", width/2, height/2 - 20);
  text(second +" "+ millisecond, width/2, height/2 + 20);
  
  if (running) {
    int currentTime = millis() - start;
    second = currentTime / 1000;
    millisecond = currentTime % 1000;
  }
}

void keyPressed() {
  if (key == ' ') {
    if (!running) {
      start = millis();
    } else {
      int currentTime = millis() - start;
      second = currentTime / 1000;
      millisecond = currentTime % 1000;
    }
    running = !running;
  }
}
