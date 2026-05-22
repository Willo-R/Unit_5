void gameover(){
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

  //scoreboard
  stroke(0);
  textSize(100);
  fill(red);
  text(leftScore, width/4, 100);
  fill(blue);
  text(rightScore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer -= 1;
  
  //win text display
  if(leftScore > rightScore){
    textSize(100);
    fill(red);
    text("LEFT WINS", 400, 300);
    
  }
  else{
    fill(blue);
    text("RIGHT WINS", 400, 300);
  }
}

void gameoverClicks(){
  
}
