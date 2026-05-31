void game() {

  //background
  drawBackground();

  //draw bricks & brick collision
  stroke(0);
  int i = 0;
  while (i < n) {
    if (alive[i]) {
      manageBrick(i);
    }
    i++;
  }

  //draw paddle
  fill(255);
  circle(paddleX, paddleY, paddleD);

  //animate paddle
  if (aKey) paddleX -= 8;
  if (dKey) paddleX += 8;

  //paddle limits
  if (paddleX < paddleD/2) paddleX = paddleD/2;
  if (paddleX > width - paddleD/2) paddleX = width - paddleD/2;

  //draw ball
  circle(ballX, ballY, ballD);

  //ball movement
  if (timer < 0) {
    ballX += vx;
    ballY += vy;
  }

  //paddle collision
  ballPaddleD = dist(paddleX, paddleY, ballX, ballY);
  if (ballPaddleD <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX) / 5;
    vy = (ballY - paddleY) / 5;
    paddleBounce.rewind();
    paddleBounce.play();
  }

  //ball bounce limit
  if (ballY < ballD/2) {
    vy *= -1;
    wallBounce.rewind();
    wallBounce.play();
  }
  if (ballX < ballD/2 || ballX > width - ballD/2) {
    vx *= -1;
    wallBounce.rewind();
    wallBounce.play();
  }

  //lives
  if (lives == 0) mode = GAMEOVER;
  if (ballY > height + ballD) {
    lives--;
    if (lives > 0) {
      miss.rewind();
      miss.play();
    }
    resetBall();
  }

  //win condition
  if (score == n) mode = GAMEOVER;

  //timer
  timer--;

  //prevent horizontal movement
  if (vy == 0) vy = random(-0.3, 0.3);
}

void gameClicks() {
  mode = PAUSE;
}
