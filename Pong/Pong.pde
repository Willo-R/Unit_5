int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftX, leftY, leftD, rightX, rightY, rightD; //paddles
float ballX, ballY, ballD;  //ball

//keyboard variables
boolean wKey, sKey, upKey, downKey;







void setup() {
  size(800, 800);
  mode = GAME;
  
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
