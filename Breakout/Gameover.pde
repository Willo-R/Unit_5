void gameover() {
  //GIF
  image(introGIF[introFrame], 0, 0, width, height);
  introFrame++;
  if (introFrame == introFrameNum) introFrame = 0;

  //title
  fill(255);
  textFont(tennis);
  textSize(150);
  if (score == 36) {
    text("You Won!", 400, 350);
    textSize(50);
    text("<click to restart>", 400, 650);
  } else {
    text("You lost!", 400, 350);
    textSize(50);
    text("<click to start>", 400, 650);
  }
}

void gameoverClicks() {
  mode = INTRO;
  reset();
}
