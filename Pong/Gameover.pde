void gameover() {
  //background
  background(yellow);
  fill(255);

  //draw paddles
  fill(red);
  circle(leftX, leftY, leftD);
  fill(blue);
  circle(rightX, rightY, rightD);

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  stroke(0);
  textSize(100);
  fill(red);
  text(leftScore, width/4, 100);
  fill(blue);
  text(rightScore, 3*width/4, 100);

  //win text display
  if (leftScore > rightScore) {
    textSize(100);
    fill(red);
    text("LEFT WINS", 400, 300);
  } else {
    fill(blue);
    text("RIGHT WINS", 400, 300);
  }

  //victory
  victory.play();
}

void gameoverClicks() {
  reset();
  mode = INTRO;
  victory.pause();
  victory.rewind();
}
