void gameover() {
  background(red);
  textFont(pirate);
  textSize(100);
  fill(255);
  text("GAME OVER", 400, 350);

  //high score
  if (score > highScore) {
    highScore = score;
  }
  textSize(60);
  text("High Score: " + highScore, 400, 500);

  //quit button
  rectTactile(500, 650, 200, 100);
  strokeWeight(3);
  rect(500, 650, 200, 100);
  fill(0);
  text("Quit", 600, 700);

  //restart button
  fill(255);
  rectTactile(100, 650, 200, 100);
  rect(100, 650, 200, 100);
  fill(0);
  text("Restart", 200, 700);


  //music
  intro.pause();
  gameover.play();
}

void gameoverClicks() {
  reset();


  //quit button
  if (mouseX > 500 && mouseX < 700 && mouseY > 650 && mouseY < 750) {
    exit();
  }

  //restart button
  if (mouseX > 100 && mouseX < 300 && mouseY > 650 && mouseY < 750) {
    mode = INTRO;
    intro.rewind();
    gameover.pause();
    gameover.rewind();
  }
}
