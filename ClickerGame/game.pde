void game() {
  background(blue);
  
  fill(0);
  textFont(pirate);
  textSize(50);
  text("Score: " + score, width/2, 50);
  text("lives: " + lives, width/2, 100);

  //pause button
  fill(255);
  rectTactile(50, 50, 100, 100);
  square(50, 50, 100);
  stroke(0);
  fill(255);
  strokeWeight(3);
  pauseButton();
  

  //display target
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  stampEvaluator();
  

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx *= -1;
  }

  if (y < d/2 || y > height-d/2) {
    vy *= -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d / 2) {
    score += 1;
    vx *= 1.1;
    vy *= 1.1;
    
    point.rewind();
    point.play();
  } 
  else if(mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150){
    mode = PAUSE;
    intro.pause();
  }
  
  else {
    lives -= 1;
    if(lives > 0){
      miss.rewind();
      miss.play();
    }
    else {
      mode = GAMEOVER;
    }
  }
}
