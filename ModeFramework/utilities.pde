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
