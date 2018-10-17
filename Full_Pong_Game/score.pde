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
  
  
  
  
  
  
  
  
  
}
