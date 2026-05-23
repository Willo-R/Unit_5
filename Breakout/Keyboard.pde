void keyPressed() {
  if (mode == GAME) {
    if (key == 'a' || key == 'a') aKey = true;
    if (key == 'd' || key == 'd') dKey = true;
  }
}

void keyReleased() {
  if (mode == GAME) {
    if (key == 'a' || key == 'a') aKey = false;
    if (key == 'd' || key == 'd') dKey = false;
  }
}
