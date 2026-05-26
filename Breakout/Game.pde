void game() {
  background(green);
  fill(255);

  //draw bricks & brick collision
  int i = 0;
  while(i < n) {
    circle(x[i], y[i], brickD);
    if(dist(ballX, ballY, x[i], y[i]) <= ballD/2 + brickD/2) {
    vx = (ballX - x[i]) / 6;
    vy = (ballY - y[i]) / 6;
  }    
    i += 1;
  }

  //draw paddle
  circle(paddleX, paddleY, paddleD);

  //animate paddle
  if (aKey) paddleX -= 5;
  if (dKey) paddleX += 5;

  //paddle limits
  if (paddleX < paddleD/2) paddleX = paddleD/2;
  if (paddleX > 800 - paddleD/2) paddleX = 800 - paddleD/2;

  //draw ball
  circle(ballX, ballY, ballD);

  //ball movement
  ballX += vx;
  ballY += vy;

  //collision
  ballPaddleD = dist(paddleX, paddleY, ballX, ballY);
  if (ballPaddleD <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX) / 10;
    vy = (ballY - paddleY) / 10;
  }

  //ball bounce limit
  if (ballY < ballD/2) {
    vy *= -1;
  }
  if (ballX < ballD/2 || ballX > width - ballD/2) {
    vx *= -1;
  }
}

void gameClicks() {
}
