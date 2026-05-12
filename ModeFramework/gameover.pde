void gameover(){
  background(red);
  textSize(100);
  text("GAME OVER", 400, 350);
}

void gameoverClicks(){
  if(mouseX > 0 && mouseY > 0 && mouseX < width && mouseY < height){
    mode = INTRO;
    score = 0;
    lives = 3;
  }
}
