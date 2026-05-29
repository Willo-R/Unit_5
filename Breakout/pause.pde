void pause() {
  //GIF
  image(pauseGIF[pauseFrame], 0, 0, width, height);
  pauseFrame++;
  if (pauseFrame == pauseFrameNum) pauseFrame = 0;

  //text
  fill(255);
  textSize(125);
  text("Pause!", 400, 50);
  textSize(50);
  text("<click to resume>", 400, 750);
}

void pauseClicks() {
  mode = GAME;
}
