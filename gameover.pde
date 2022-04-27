void gameover () {
   gameover.play();
  theme.pause ();
  //background (0);

  if (leftscore > rightscore) {
    fill (255, 0, 0);
    textSize (100);
    text ("RED WINS", 400, 285);
  } else {
    fill (0, 0, 255);
    textSize (100);
    text ("BLUE WINS", 400, 285);
  }

  //restart button
  //  tactile3 (400, 400, 200, 120);
  // fill (255);
  //  rect (400, 400, 200, 120, 10);
  //  fill (0);
  // textSize (30);
  //  text ("RESTART", 400, 400);
}

void tactile3 (int x, int y, int w, int h) {
  if (mouseX > 260 && mouseX < 510 && mouseY > 320 && mouseY < 480) {
    strokeWeight (6);
    stroke (0);
  } else {
    strokeWeight (1);
    stroke (255);
  }
}

void gameoverClicks () {
  // if (mouseX > 260 && mouseX < 510 && mouseY > 320 && mouseY < 480)
  mode = INTRO;
  theme.rewind ();
}
