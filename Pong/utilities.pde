void rectTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    if (mode == INTRO || mode == GAMEOVER) {
      fill(lightGray);
    } else {
      stroke(red);
      strokeWeight(3);
    }
  } else {
    stroke(0);
    strokeWeight(3);
    fill(255);
  }
}

void reset() {
  //initialize paddle
  leftX = 0;
  leftY = height/2;
  leftD = 200;
  rightX = width;
  rightY = height/2;
  rightD = 200;

  //initialize score
  leftScore = 0;
  rightScore = 0;


  //initialize ball
  ballX = width/2;
  ballY = height/2;
  ballD = 100;

  //initialize movement
  dir = random(-1, 1);
  if (dir > 0) {
    vx = 10;
    vy = random(-2, 2);
  } else {
    vx = -10;
    vy = random(-2, 2);
  }

  //initialize keyboard vars
  wKey = sKey = upKey = downKey = false;

  //timer
  timer = 50;

  //intro song
  intro.rewind();
}

void reset2() {
  ballX = width/2;
  ballY = height/2;
  ballD = 100;
  dir = random(-1, 1);
  if (dir > 0) {
    vx = 10;
    vy = random(-2, 2);
  } else {
    vx = -10;
    vy = random(-2, 2);
  }
  timer = 50;
  score.rewind();
  score.play();
}
