void intro(){
  background(lightGray);
  
  //start game text
  textSize(100);
  fill(0);
  text("CLICKER GAME", 400, 350);
  
  //start game button
  fill(255);
  rect(100, 600, 200, 100);
  rectTactile(100, 600, 200, 100);
  fill(0);
  textSize(75);
  text("Start", 200, 650);
}



void introClicks(){
  if(mouseX > 100 && mouseX < 300 && mouseY > 600 && mouseY < 700){
    mode = GAME;
  }
}
