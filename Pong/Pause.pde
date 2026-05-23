void pause(){
  //background
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

  //pause
  stroke(0);
  textSize(200);
  fill(orange);
  text("paused", 400, 300);
  
  //score board
  textSize(100);
  fill(red);
  text(leftScore, width/4, 100);
  fill(blue);
  text(rightScore, 3*width/4, 100);
  
  //ball
  strokeWeight(3);
  fill(green);
  circle(ballX, ballY, ballD);
  
}


void pauseClicks(){
  mode = GAME;
}
