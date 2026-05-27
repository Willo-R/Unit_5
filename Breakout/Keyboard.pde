void keyPressed() {
  if (mode == GAME) {
    if (key == 'a' || key == 'A') aKey = true;
    if (key == 'd' || key == 'D') dKey = true;
  }
}

void keyReleased() {
  if (mode == GAME) {
    if (key == 'a' || key == 'A') aKey = false;
    if (key == 'd' || key == 'D') dKey = false;
  }
}
