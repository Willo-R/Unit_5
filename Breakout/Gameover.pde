void gameover() {
  //text
  fill(255);
  textFont(tennis);
  textSize(150);
  if (score == 36) {
    //background
    image(win, 0, 0);
    
    text("You Won!", 400, 100);
    textSize(50);
    text("<click to restart>", 400, 650);
    
    //victory sound
    winning.play();
    
    
  } else {
    //background
    image(lose, 0, 0, 800, 800);
    
    text("You lost!", 400, 100);
    textSize(50);
    text("<click to restart>", 400, 650);
    
    //losing sound
    losing.play();
  }
}

void gameoverClicks() {
  mode = INTRO;
  reset();
  winning.pause();
  winning.rewind();
  losing.pause();
  losing.rewind();
}
