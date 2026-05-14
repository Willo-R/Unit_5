void rectTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(red);
    strokeWeight(3);
    fill(lightGray);
  } else {
    stroke(0);
    strokeWeight(2);
    fill(255);
  }
}

void pauseButton() {
  if (mode == GAME) {
    line(85, 70, 85, 130);
    line(115, 70, 115, 130);
  }
  if (mode == PAUSE) {
    line(90, 90, 110, 100);
    line(90, 110, 110, 100);
  }
}

void reset(){
  //target
  x= width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  
  //game initialization
  score = 0;
  lives = 3;
}
