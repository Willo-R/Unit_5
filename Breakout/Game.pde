void game(){
  background(gray);
  fill(255);
  
  //draw paddle
  circle(paddleX, paddleY, paddleD);
  
  //animate paddle
  if(aKey == true) paddleX -= 5;
  if(dKey == true) paddleX += 5;
  
  //paddle limits
  if(paddleX < paddleD/2) paddleX = paddleD/2;
  if(paddleX > 800 - paddleD/2) paddleX = 800 - paddleD/2;

  //draw ball
  circle(ballX, ballY, ballD);
  
  //ball movement
  ballX += vx;
  ballY += vy;
  
  //collision
  ballPaddleD = dist(paddleX, paddleY, ballX, ballY);
  if(ballPaddleD <= paddleD/2 + ballD/2){
    vx = (ballX - paddleX) / 10;
    vy = (ballY - paddleY) / 10;
  }
  
  //ball bounce limit
  if (ballY < ballD/2) {
    vy *= -1;
  }
  if(ballX < ballD/2 || ballX > width - ballD/2){
    vx *= -1;
  }
  
}
