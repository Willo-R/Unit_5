void pause(){
  fill(0);
  
  textSize(100);
  text("PAUSE", 400, 400);
  strokeWeight(3);
  fill(255);
  stroke(0);
  rectTactile(50, 50, 100, 100);
  square(50, 50, 100);
  stroke(0);
  fill(255);
  pauseButton();
}

void pauseClicks(){
  if(mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150){
    mode = GAME;
    intro.play();
  }
}
