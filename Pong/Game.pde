void game(){
  background(yellow);
  fill(255);
 
  //draw paddles
  fill(red);
  circle(leftX, leftY, leftD);
  fill(blue);
  circle(rightX, rightY, rightD);
  
  //draw paddles
  if(wKey == true) leftY -= 5;
  if(sKey == true) leftY += 5;
  if(upKey == true) rightY -= 5;
  if(downKey == true) rightY += 5;
  
  //ball
  fill(green);
  circle(ballX, ballY, ballD);
}

void gameClicks(){
  
}
