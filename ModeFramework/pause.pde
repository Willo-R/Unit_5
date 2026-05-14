void pause(){
  fill(0);
  textSize(100);
  text("PAUSE", 400, 400);
  strokeWeight(3);
  fill(255);
  square(50, 50, 100);
  pauseButton();
}

void pauseClicks(){
  if(dist(mouseX, mouseY, 100, 100) < 50){
    mode = GAME;
    intro.play();
  }
}
