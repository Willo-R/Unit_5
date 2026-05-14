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

//TARGET VARIABLES
float x, y, d;
float vx, vy; //target velocity
int score, lives;

//COLOR PALETTE
color darkGreen = #008000;
color lightGray = #D3D3D3;
color red = #FF0000;
color gold = #BA8E23;
color yellow = #FFEF00;

//sound variables
Minim minim;
AudioPlayer intro, point, miss, gameover;


void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  stroke(0);
  strokeWeight(2);
  
  //target initialization
  x= width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  
  //sound variables
  minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  point = minim.loadFile("point.mp3");
  miss = minim.loadFile("miss.mp3");
  gameover = minim.loadFile("gameover.mp3");
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
  else {
    println("Error: Mode = " + mode);
  }
}
