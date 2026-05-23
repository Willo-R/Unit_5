int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

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


///color pallete
color gray = #d3d3d3;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  textSize(100);
  stroke(0);
  strokeWeight(2);
  mode = GAME;
  
  //initialize keys
  aKey = dKey = false;
  
  //initialize paddles
  paddleX = 400;
  paddleY = height;
  paddleD = 100;
  
  //initialize ball
  ballX = 400;
  ballY = 500;
  ballD = 15;
  
  //initialize movement
  vx = 0;
  vy = 1;
  
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
