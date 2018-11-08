void score() {

  if (ballX == 0+(ballDiameter/2) || ballX == width-(ballDiameter/2)) {
    if (ballX == 0+(ballDiameter/2)) { 
      score[1] += 1;
    }
    if (ballX == width-(ballDiameter/2)) { 
      score[0] += 1;
    }
  }

  ballX = ballStartX;
  ballY = ballStartY;

  player[1] = height/2 - height/paddleHeightRatio/2;


  textSize(0.1*width);
  text("Player 1:" + score[0], (width*1/10)-(0.1*width), height*1/5);
  text("Player 2:" + score[1], (width*1/10)-(0.1*width), height*3/10);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
}
