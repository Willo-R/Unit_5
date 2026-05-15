void intro(){
  background(gold);
  
  //start game text
  textFont(pirate);
  textSize(100);
  fill(0);
  text("CLICKER GAME", 400, 350);
  textSize(60);
  text("(pirate edition)", 400, 430);
  
  //start game button
  fill(255);
  rectTactile(100, 600, 200, 100);
  rect(100, 600, 200, 100);
  fill(0); 
  textSize(60);
  text("Start", 200, 650);
  
  //options button
  fill(255);
  rectTactile(500, 600, 200, 100);
  rect(500, 600, 200, 100);
  fill(0);
  text("Options", 600, 650);
  
  //song
  intro.play();
}



void introClicks(){
  if(mouseX > 100 && mouseX < 300 && mouseY > 600 && mouseY < 700){
    mode = GAME;
  }
  
  if(mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700){
    mode = OPTIONS;
  }
}
