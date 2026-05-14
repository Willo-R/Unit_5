void gameover() {
  background(red);
  textFont(pirate);
  textSize(100);
  text("GAME OVER", 400, 350);
  
  //high score
  if(score > highScore){
    highScore = score;
  }
  textSize(75);
  text("High Score: " + highScore , 400, 500);
  
  //quit button
  strokeWeight(3);
  fill(255);
  rect(550, 650, 200, 100);
  fill(0);
  text("Quit", 650, 700);
  

  //music
  intro.pause();
  gameover.rewind();
  gameover.play();
}

void gameoverClicks() {
  mode = INTRO;
  reset();
  
  intro.rewind();
  gameover.pause();
  
  //quit button
 
}
