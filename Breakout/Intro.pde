void intro() {
  //GIF
  image(introGIF[introFrame], 0, 0, width, height);
  introFrame++;
  if(introFrame == introFrameNum) introFrame = 0;
  
  //title
  fill(255);
  textFont(tennis);
  textSize(150);
  text("Breakout!", 400, 350);
  
  textSize(50);
  fill(rolandGarros);
  text("<click to start>" , 400, 650);
}

void introClicks() {
  mode = GAME;
}
