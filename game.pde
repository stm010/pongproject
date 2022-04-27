void game () {
  strokeWeight (5);
  background (0);
  stroke (255);
  line (400, 0, 400, 800);

  //draw paddles

  stroke (0);
  fill (255, 0, 0);
  circle (leftx, lefty, leftd); //left paddle
  fill (0, 0, 255);
  circle (rightx, righty, rightd); //right paddle

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    if (ballx>400) {
      if (bally>righty) righty = righty+2;
      if (bally<righty) righty = righty-2;
    }
  }

  //paddle limits
  if (lefty < 100) {
    lefty = 100;
  }
  if (lefty > 500) {
    lefty = 500;
  }
  if (righty < 100) {
    righty = 100;
  }
  if (righty > 500) {
    righty = 500;
  }

  //scoring
  if (ballx < 0) {
    rightscore = rightscore+1; //+1 is ++
    ballx = width/2;
    bally = height/2;
    timer = 100;
    coin.rewind();
    coin.play();
  }
  if (ballx > width) {
    leftscore = leftscore+1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    coin.rewind();
    coin.play();
  }

  //scoreboard
  textSize (50);
  fill (255, 0, 0);
  text (leftscore, width/4, 100);
  fill (0, 0, 255);
  text (rightscore, 3*width/4, 100);

  if (leftscore > 2) {
    mode = GAMEOVER;
  }
  if (rightscore > 2) {
    mode = GAMEOVER;
  }

  //timer
  //text (timer, 3*width/4, 550);
  timer = timer - 1;

  //ball
  stroke (255);
  fill (255);
  circle (ballx, bally, balld);

  //moving ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //bouncing ball
  //  if (ballx < 0+balld/2 || ballx > width-balld/2) {
  // vx = vx * -1;
  // }
  if (bally < 0+balld/2 || bally >  height-balld/2) {
    vy = vy * -1;
  }

  //distance between ball and paddle (always updating number, put in game)
  d1 = dist (leftx, lefty, ballx, bally);
  d2 = dist (rightx, righty, ballx, bally);

  // circle collision
  if (d1 <= leftr+ballr) {
    vx = (ballx-leftx)/15;
    vy = (bally-lefty)/15;
    bump.rewind();
    bump.play();
  }
  if (d2 <= rightr+ballr) {
    vx = (ballx-rightx)/15;
    vy = (bally-righty)/15;
    bump.rewind();
    bump.play();
  }
}

void gameClicks () {
  mode = PAUSE;
}
