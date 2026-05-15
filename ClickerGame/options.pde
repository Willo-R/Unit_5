void options(){
  background(green);
  fill(0);
  textSize(120);
  text("OPTIONS", 400, 100);
  
  //skeleton stamp
  fill(255);
  stroke(0);
  rectTactile(100, 200, 200, 200);
  square(100, 200, 200);
  image(skeleton, 200, 300, 150, 150); 
  
  //pirate stamp
  fill(255);
  stroke(0);
  rectTactile(500, 200, 200, 200);
  square(500, 200, 200);
  image(pirateFace, 600, 300, 150, 150);
  
  //slider 
  fill(255);
  sliderTactile();
  line(150, 525, 150, 725);
  circle(150, sliderY, 50);
  
  //INDICATOR
  //stamp scaling
  sizeX = map(sliderY, 525, 725, 150, 30);
  sizeY = map(sliderY, 525, 725, 150, 30);
  previousSizeX = sizeX;
  previousSizeY = sizeY;
  //circle scaling
  d = map(sliderY, 525, 725, 200, 50);
  previousD = d;
  //stamp & circle
  fill(255);
  stroke(0);
  circle(400, 625, d);
  stampSelector(); 
  
  
  //Exit button
  rectTactile(580, 575, 180, 100);
  rect(580, 575, 180, 100);
  fill(0);
  textSize(90);
  text("OK", 670, 625);
  
}


void optionsClicks(){
   controlSlider();
   
   //back to intro
   if(mouseX > 580 && mouseX < 760 && mouseY > 575 && mouseY < 675){
     mode = INTRO;
   }
   
   //skeleton stamp select
   if(mouseX > 100 && mouseX < 300 && mouseY > 200 && mouseY < 400 && skeletonOn == false){
     skeletonOn = true;
     pirateFaceOn = false;
   }
   
   //pirate stamp select
   if(mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && pirateFaceOn == false){
     pirateFaceOn = true;
     skeletonOn = false;
   }
}
