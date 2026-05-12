void rectTactile(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
    stroke(red);
    strokeWeight(3);
  }
  else{
    stroke(0);
    strokeWeight(2);
  }
}
