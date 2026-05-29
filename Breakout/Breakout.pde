int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//GIF
PImage[] introGIF;
int introFrameNum;
int introFrame;
PImage[] pauseGIF;
int pauseFrameNum;
int pauseFrame;

//keyboard var
boolean aKey, dKey;

//paddle var
float paddleX, paddleY, paddleD;

//distance between the ball and the paddle
float ballPaddleD;

//ball var
float ballX, ballY, ballD;

//movement var
float vx;
float vy;

//brick var
int[] x;
int[] y;
boolean[] alive;
int brickD;
int n;
int tempX;
int tempY;

//trackers
int score;
int lives;
int timer;

//font
PFont tennis;

///color pallete
color gray = #d3d3d3;
color yellow = #FFEB3B;
color green=#4CAF50;
color red = #FF5722;
color grass = #CDDC39;
color blue = #00BFFF;
color orange = #FFC107;
color lightGreen = #8BC34A;
color background = #6A0572;
color AO = #00A3E0;
color rolandGarros= #C45A3D;
color wimbledon = #A1C68D;
color usOpen = #6F4C7A;


void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  textSize(100);
  stroke(0);
  strokeWeight(3);
  mode = INTRO;

  //initialize keys
  aKey = dKey = false;

  //initialize paddles
  paddleX = 400;
  paddleY = height;
  paddleD = 100;

  //initialize ball
  ballX = 400;
  ballY = 600;
  ballD = 15;

  //initialize movement
  vx = 0;
  vy = 2;
  
  //set up array of bricks
  n = 36;
  x = new int[n];  //instantiation
  y = new int[n];
  alive = new boolean[n];
  brickD = 40;
  tempX = 80;
  tempY = 80;
  
  int i = 0;
  while(i < n){
    x[i] = tempX;
    y[i] = tempY;
    alive[i] = true;
    tempX += 80;
    if(tempX == width) {
      tempX = 80;
      tempY += 80;
    }
    i++;
  }
  
  //trackers initialization
  score = 0;
  lives = 3;
  timer = 50;
  
  //font
  tennis = createFont("tennis.otf", 100);
  
  //intro GIF  
  introFrameNum = 96;
  introGIF = new PImage[introFrameNum];
  int frameIntro = 0;
  while(frameIntro < introFrameNum) {
    introGIF[frameIntro] = loadImage("frame_"+frameIntro+"_delay-0.04s.gif");
    frameIntro++;
  }
  
  //pause GIF
  pauseFrameNum = 29;
  pauseGIF = new PImage[pauseFrameNum];
  int framePause = 0;
  while(framePause < pauseFrameNum){
    pauseGIF[framePause] = loadImage("frame_"+framePause+"_delay-0.03s.gif");
    framePause++;
  }
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
