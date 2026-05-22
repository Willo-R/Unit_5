void game() {
  background(yellow);
  fill(255);

  //draw paddles
  fill(red);
  circle(leftX, leftY, leftD);
  fill(blue);
  circle(rightX, rightY, rightD);

  //draw paddles
  if (wKey == true) leftY -= 5;
  if (sKey == true) leftY += 5;
  if (upKey == true) rightY -= 5;
  if (downKey == true) rightY += 5;
  

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

  //ball
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
    ballX = width/2;
    ballY = height/2;
    timer = 50;
  }

  if (ballX > width) {
    leftScore++;
    ballX = width/2;
    ballY = height/2;
    timer = 50;
  }

  //ball bounce & limit
  if (ballY < ballD/2 || ballY > height - ballD / 2) {
    vy *= -1;
    if(ballY < ballD/2) ballY = ballD/2;
    else ballY = height - ballD / 2;
  }
  
  //paddle limit
  if(leftY < 50 + ballD/2) leftY = 50 + ballD/2;
  if(leftY > 550 - ballD/2) leftY = 550 - ballD/2;
  if(rightY < 50 + ballD/2) rightY = 50 + ballD/2;
  if(rightY > 550 - ballD/2) rightY = 550 - ballD/2;


  //collision
  leftBallPaddleD = dist(leftX, leftY, ballX, ballY);
  rightBallPaddleD = dist(rightX, rightY, ballX, ballY);

  if (leftBallPaddleD <= leftD/2 + ballD/2) {
    vx = (ballX - leftX) / 50;
    vy = (ballY - leftY) / 50;
  }

  if (rightBallPaddleD <= leftD/2 + ballD/2) {
    vx = (ballX - rightX) / 50;
    vy = (ballY - rightY) / 50;
  }
  
  //Gameover transition
  if(leftScore == 3 || rightScore == 3) mode = GAMEOVER;
}

void gameClicks() {
}
