void playGame() {
  background(#4EC9F2);

  ballX += ballMoveX;
  ballY += ballMoveY;

  if (ballX == paddle[0]+(ballDiameter/2) && ballY >= player[1] & ballY <= player[1] + paddle[1]) {
    ballMoveX *= (-1);
  }
  if (ballX == player[2]-(ballDiameter/2) && ballY >= player[3] & ballY <= player[3] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }

  if (ballY == 0+(ballDiameter/2) || ballY == height-(ballDiameter/2) ) {
    ballMoveY = ballMoveY * (-1);
  }

  ballSquish();

  if (keyPressed == true & key == CODED) {
    if (keyCode == UP) {
      if (player[1] >= 5) {
        player[1] -= 5;
      }
      if (player[1] <0) {
        player[1] = 0;
      }
    }

    if (keyCode == DOWN) {
      if (player[1] + paddle[1] <= height) {
        player[1] += 5;
      }
      if (player[1] + paddle[1] > height) {
        player[1] = height - paddle[1] - 1;
      }
    }
  }

  //Player 2 movement

  if (mouseY >=0 || mouseY - paddle[1] < height) {
    player[3] = mouseY;
  }
  if (mouseY >= height - paddle[1]) {
    player[3] = height - paddle[1] - 1;
  }



  fill(#FF00FF);
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  
  fill(0);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}
