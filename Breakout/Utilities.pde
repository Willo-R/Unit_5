void drawBackground() {
  background(#3A7D44);

  stroke(255);
  noFill();

  //Doubles outer boundary
  strokeWeight(3);
  rect(40, 40, width - 80, height - 80);

  //Singles sidelines
  strokeWeight(2);
  float singlesDoublesD = (width - 80) * 0.125;
  float leftSinglesLine  = 40 + singlesDoublesD;
  float rightSinglesLine = width - 40 - singlesDoublesD;
  line(leftSinglesLine, 40, leftSinglesLine, height - 40);
  line(rightSinglesLine, 40, rightSinglesLine, height - 40);

  //Net
  strokeWeight(5);
  line(40, height / 2, width - 40, height / 2);

  //Service lines
  strokeWeight(2);
  float netToServiceLine = (height - 80) * 0.35 / 2;
  float topServiceLine = height / 2 - netToServiceLine;
  float bottomServiceLine = height / 2 + netToServiceLine;
  line(leftSinglesLine, topServiceLine, rightSinglesLine, topServiceLine);
  line(leftSinglesLine, bottomServiceLine, rightSinglesLine, bottomServiceLine);

  //service line
  line(width / 2, topServiceLine, width / 2, bottomServiceLine);

  //Center mark at net
  strokeWeight(3);
  line(width / 2 - 10, height / 2, width / 2 + 10, height / 2);

  //score display
  textSize(50);
  text("Score: " + score, 140, 720);

  //lives display
  text("Lives: " + lives, 660, 720);
}

void manageBrick(int i) {
  //color
  if (i < 9) fill(AO);
  else if (i < 18) fill(rolandGarros);
  else if (i < 27) fill(wimbledon);
  else if (i < 36) fill(usOpen);

  //brick display
  circle(x[i], y[i], brickD);

  //collision
  if (dist(ballX, ballY, x[i], y[i]) <= ballD/2 + brickD/2) {
    vx = (ballX - x[i]) / 6;
    vy = (ballY - y[i]) / 6;
    alive[i] = false;
    //scoreboard
    score++;
  }
}

void reset() {
  resetBall();

  //initialize keys
  aKey = dKey = false;

  int i = 0;
  while (i < n) {
    alive[i] = true;
    i++;
  }
  
  //score reset
  score = 0;
  lives = 3;
  
  //text reset
  textSize(100);
  stroke(0);
  strokeWeight(3);
}


void resetBall() {
  //initialize ball
  ballX = 400;
  ballY = 600;

  //initialize movement
  vx = 0;
  vy = 2;
  timer = 50;
}
