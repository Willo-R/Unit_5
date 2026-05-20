void rectTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    if (mode == INTRO || mode == GAMEOVER) {
      fill(lightGray);
    } else {
      stroke(red);
      strokeWeight(3);
    }
  } else {
    stroke(0);
    strokeWeight(3);
    fill(255);
  }
}
