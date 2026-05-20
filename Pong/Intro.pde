void intro(){
  background(red);
  
  //title
  textFont(chinese);
  textSize(200);
  fill(yellow);
  text("PONG", 400, 250);
  
  //1 player button
  fill(255);
  rectTactile(100, 550, 230, 100);
  rect(100, 550, 230, 100);
  fill(0);
  textSize(60);
  text("1 Player", 215, 600);
  
  //2 player button
  fill(255);
  rectTactile(470, 550, 230, 100);
  rect(470, 550, 230, 100);
  fill(0);
  text("2 Player", 585, 600);
  
}

void introClicks(){
  if(mouseX > 100 && mouseX < 330 && mouseY > 550 && mouseY < 650) mode = GAME;
}
