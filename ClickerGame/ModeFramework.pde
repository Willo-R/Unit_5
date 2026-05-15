import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGET VARIABLES
float x, y, d, previousD;
float vx, vy; //target velocity
int score, lives;

//HIGH SCORE
int highScore;

//COLOR PALETTE
color green = #248f8f;
color blue = #4ECDC4;
color lightGray = #8f9e9e;
color red = #d83722;
color gold = #e6a84c;


//sound variables
Minim minim;
AudioPlayer intro, point, miss, gameover;

//font
PFont pirate;

//stamps
PImage skeleton;
boolean skeletonOn;
PImage pirateFace;
boolean pirateFaceOn;
float sizeX;
float sizeY;
float previousSizeX;
float previousSizeY;


//slider
float sliderY;


void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  imageMode(CENTER);
  stroke(0);
  strokeWeight(2);
  
  //target initialization
  x= width/2;
  y = height/2;
  d = 125;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  
  //high score
  highScore = 0;
  
  //sound variables
  minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  point = minim.loadFile("point.mp3");
  miss = minim.loadFile("miss.mp3");
  gameover = minim.loadFile("gameover.mp3");
  
  //font
  pirate = createFont("pirateFont.ttf", 100);
  
  //stamp 
  skeleton = loadImage("skeleton.png");
  skeletonOn = true;
  pirateFace = loadImage("pirateFace.png");
  pirateFaceOn = false;
  
  //slider
  sliderY = 625;
  
  reset();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } 
  else if (mode == GAME) {
    game();
  } 
  else if (mode == PAUSE) {
    pause();
  } 
  else if (mode == GAMEOVER) {
    gameover();
  } 
  else if (mode == OPTIONS){
    options();
  }
  else {
    println("Error: Mode = " + mode);
  }
}
