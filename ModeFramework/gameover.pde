void gameover() {
  background(red);
  textSize(100);
  text("GAME OVER", 400, 350);

  //music
  intro.pause();
  gameover.play();
}

void gameoverClicks() {
  mode = INTRO;
  score = 0;
  lives = 3;
  
  intro.rewind();
}
