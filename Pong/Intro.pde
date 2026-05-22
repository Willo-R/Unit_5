void intro(){
  background(red);
  
  //title
  textFont(chinese);
  textSize(200);
  fill(yellow);
  text("PONG", 400, 200);
  
  //1 player button
  fill(255);
  rectTactile(100, 450, 230, 100);
  rect(100, 450, 230, 100);
  fill(0);
  textSize(60);
  text("1 Player", 215, 500);
  
  //2 player button
  fill(255);
  rectTactile(470, 450, 230, 100);
  rect(470, 450, 230, 100);
  fill(0);
  text("2 Player", 585, 500);
  
}

void introClicks(){
  if(mouseX > 470 && mouseX < 700 && mouseY > 450 && mouseY < 550) mode = GAME;
}
