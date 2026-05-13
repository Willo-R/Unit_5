void game() {
  background(darkGreen);
  
  fill(0);
  textSize(50);
  text("Score: " + score, width/2, 50);
  text("lives: " + lives, width/2, 100);

  //pause button
  stroke(0);
  fill(255);
  strokeWeight(3);
  square(50, 50, 100);
  line(85, 70, 85, 130);
  line(115, 70, 115, 130);

  //display target
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);

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
    point.rewind();
    point.play();
  } 
  else if(dist(mouseX, mouseY, 100, 100) < 50){
    mode = PAUSE;
  }
  
  else {
    lives -= 1;
    if(lives == 0) mode = GAMEOVER;
  }
}
