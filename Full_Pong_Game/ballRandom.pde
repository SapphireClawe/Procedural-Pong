void ballRandom() {
  
  ballMoveX = int (random (-2, 2));
    
  while (ballMoveX == 0) {
    ballMoveX = int (random (-2, 2));
  }
  
  ballMoveY = int (random (-2, 2));
  
  while (ballMoveY == 0) {
    ballMoveY = int (random (-2, 2));
  }
}
