//Global variables

Boolean start = false;
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
int paddleWidthRatio;
int paddleHeightRatio = 10;
int [] paddle = {0, 0};
int [] player = new int [4];
int [] score = {0, 0};

void setup() {
  size (700, 800);
  screenSizeChecker ();
  gameStart();
}

void draw() {
   startStop ();
   
   if (start == true) {
     playGame();
     score();
   }
}
