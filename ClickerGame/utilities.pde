void rectTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    if (mode == INTRO || mode == OPTIONS || mode == GAMEOVER) {
      fill(lightGray);
    } else {
      stroke(red);
      strokeWeight(3);
    }
  } else {
    stroke(0);
    strokeWeight(3);
    fill(255);
  }
}

void pauseButton() {
  if (mode == GAME) {

    line(85, 70, 85, 130);
    line(115, 70, 115, 130);
  }
  if (mode == PAUSE) {
    line(90, 90, 110, 100);
    line(90, 110, 110, 100);
  }
}

void reset() {
  //target
  x= width/2;
  y = height/2;
  d = previousD;
  sizeX = previousSizeX;
  sizeY = previousSizeY;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  if(skeletonOn){
    skeletonOn = true;
    pirateFaceOn = false;
  }
  else{
    pirateFaceOn = true;
    skeletonOn = false;
  }

  //game initialization
  score = 0;
  lives = 3;
}

void controlSlider() {
  if (mouseX > 125 && mouseX < 175 && mouseY > 525 && mouseY < 725) {
    sliderY = mouseY;
  }
}

void sliderTactile() {
  if (mouseX > 125 && mouseX < 175 && mouseY > 525 && mouseY < 725) {
    stroke(lightGray);
  }
}

void stampSelector(){
  if(skeletonOn){
    image(skeleton, 400, 625, sizeX, sizeY);
    
  }
  if(pirateFaceOn){
    image(pirateFace, 400, 625, sizeX, sizeY);
    
  }
}

void stampEvaluator(){
  if(skeletonOn){
    image(skeleton, x, y, sizeX, sizeY);
  }
  
  if(pirateFaceOn){
    image(pirateFace, x, y, sizeX, sizeY);
  }
}
