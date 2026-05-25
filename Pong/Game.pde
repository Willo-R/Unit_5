void game() {
  background(yellow);
  fill(255);

  //draw paddles
  fill(red);
  circle(leftX, leftY, leftD);
  fill(blue);
  circle(rightX, rightY, rightD);

  //animate paddles
  if (wKey == true) leftY -= 8;
  if (sKey == true) leftY += 8;

  if (AI == false) {
    if (upKey == true) rightY -= 8;
    if (downKey == true) rightY += 8;
  } else {
    if (ballY > rightY && ballX > 500 && vx > 0) rightY += 8;
    if (ballY < rightY && ballX > 500 && vx > 0) rightY -= 8;
  }

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
  //text(timer, 3*width/4, 550);
  timer -= 1;

  //draw ball
  strokeWeight(3);
  fill(green);
  circle(ballX, ballY, ballD);

  //movement
  if (timer < 0) {
    ballX += vx;
    ballY += vy;
  }

  //scoring
  if (ballX < 0) {
    rightScore++;
    reset2();
  }

  if (ballX > width) {
    leftScore++;
    reset2();
  }

  //ball bounce limit
  if (ballY < ballD/2 || ballY > height - ballD / 2) {
    vy *= -1;
    wallBounce.rewind();
    wallBounce.play();
    if (ballY < ballD/2) ballY = ballD/2;
    else ballY = height - ballD / 2;
  }

  //paddle limit
  if (leftY < 50 + leftD/2) leftY = 50 + leftD/2;
  if (leftY > 550 - leftD/2) leftY = 550 - leftD/2;
  if (rightY < 50 + rightD/2) rightY = 50 + rightD/2;
  if (rightY > 550 - rightD/2) rightY = 550 - rightD/2;


  //collision
  leftBallPaddleD = dist(leftX, leftY, ballX, ballY);
  rightBallPaddleD = dist(rightX, rightY, ballX, ballY);

  if (leftBallPaddleD <= leftD/2 + ballD/2) {
    vx = (ballX - leftX) / 10;
    vy = (ballY - leftY) / 10;
    paddleBounce.rewind();
    paddleBounce.play();
  }

  if (rightBallPaddleD <= leftD/2 + ballD/2) {
    vx = (ballX - rightX) / 10;
    vy = (ballY - rightY) / 10;
    paddleBounce.rewind();
    paddleBounce.play();
  }

  //Gameover transition
  if (leftScore == 3 || rightScore == 3) mode = GAMEOVER;
}



void gameClicks() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) mode = PAUSE;
}
