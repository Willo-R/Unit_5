import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftX, leftY, leftD, rightX, rightY, rightD; //paddles
float ballX, ballY, ballD;  //ball
boolean AI;

//distamce between the ball and the paddle
float leftBallPaddleD;
float rightBallPaddleD;

//movment variables
float vx;
float vy;
float dir;

//scoring
int leftScore, rightScore, timer;

//keyboard variables
boolean wKey, sKey, upKey, downKey;

//color palette
color red = #cd071e;
color orange = #f37042;
color yellow = #ffb200;
color green = #d0db61;
color blue = #365194;
color lightGray = #8f9e9e;

//font
PFont chinese;

//sound variables
Minim minim;
AudioPlayer intro, leftBounce, rightBounce, score, victory;


void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  stroke(0);
  strokeWeight(2);

  //initalize paddles
  leftX = 0;
  leftY = height/2;
  leftD = 200;
  rightX = width;
  rightY = height/2;
  rightD = 200;

  //initialize ball
  ballX = width/2;
  ballY = height/2;
  ballD = 100;

  //initialize movement
  dir = random(-1, 1);
  if (dir > 0) {
    vx = 10;
    vy = random(-2, 2);
  } else {
    vx = -10;
    vy = random(-2, 2);
  }

  //initialize score
  leftScore = 0;
  rightScore = 0;
  timer = 50;

  //initialize keyboard vars
  wKey = sKey = upKey = downKey = false;

  //font
  chinese = createFont("chinese.otf", 100);
  
  //sound variables
  minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  score = minim.loadFile("score.mp3");
  victory = minim.loadFile("victory.mp3");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
