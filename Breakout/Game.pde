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
  if (aKey) paddleX -= 5;
  if (dKey) paddleX += 5;

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

  //collision
  ballPaddleD = dist(paddleX, paddleY, ballX, ballY);
  if (ballPaddleD <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX) / 8;
    vy = (ballY - paddleY) / 8;
  }

  //ball bounce limit
  if (ballY < ballD/2) {
    vy *= -1;
  }
  if (ballX < ballD/2 || ballX > width - ballD/2) {
    vx *= -1;
  }

  //lives
  if (lives == 0) mode = GAMEOVER;
  if (ballY > height + ballD) {
    lives--;
    resetBall();
  }

  //win condition
  if (score == n) mode = GAMEOVER;
  
  //timer
  timer--;
  
  //prevent horizontal movement
  if(vy == 0) vy = random(-0.1, 0.1);
}

void gameClicks() {
}
