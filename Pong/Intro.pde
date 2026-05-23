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
  
  //song
  intro.play();
  
}

void introClicks(){
  //1 player
  if(mouseX > 100 && mouseX < 330 && mouseY > 450 && mouseY < 550){
    mode = GAME;
    AI = true;
    intro.pause();
  }
  
  //2 player 
  if(mouseX > 470 && mouseX < 700 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
    AI = false;
    intro.pause();
  }
}
