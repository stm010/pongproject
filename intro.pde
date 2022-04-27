void intro () {
   gameover.pause();
  theme.play();
  background (0);

  textSize (70);
  fill (20);
  text ("P O N G", 400, 200); //1
  textSize (80);
  fill (35);
  text ("P O N G", 400, 180); //2
  textSize (90);
  fill (80);
  text ("P O N G", 400, 160); //3
  textSize (100);
  fill (255);
  text ("P O N G", 400, 140); //4

  //reset
  leftscore = 0;
  rightscore = 0;
  leftx = 0;
  lefty = height/2;
  rightx = width;
  righty = height/2;
  vx= -3;
  vy = 3;

  //circle design
  fill (255, 0, 0);
  stroke (255, 0, 0);
  ellipse (0, 0, 500, 500);
  fill (0, 0, 255);
  stroke (0, 0, 255);
  ellipse (790, 650, 500, 500);

  //1player button
  tactile1 (270, 330, 140, 120);
  fill (255);
  rect (270, 330, 140, 120, 10);
  fill (0);
  textSize (30);
  text ("1 player", 270, 330);


  //2player button
  tactile2 (530, 330, 140, 120);
  fill (255);
  rect (530, 330, 140, 120, 10); //coord,coord,width,height
  fill (0);
  textSize (30);
  text ("2 player", 530, 330);

  strokeWeight (5);
  stroke (255, 0, 0);
  line (50, 0, 50, 700); // (x1,y1,x2,y2)
  line (0, 50, 900, 50);
  stroke (0, 0, 255);
  line (0, 550, 900, 550);
  line (750, 0, 750, 700);
}

void tactile1 (int x, int y, int w, int h) {
  if (mouseX > 200 && mouseX < 350 && mouseY > 250 && mouseY < 400) {
    strokeWeight (6);
    stroke (200, 0, 0);
  } else {
    strokeWeight (1);
    stroke (255);
  }
}

void tactile2 (int x, int y, int w, int h) {
  if (mouseX > 450 && mouseX < 620 && mouseY > 250 && mouseY < 400) {
    strokeWeight (6);
    stroke (0, 0, 200);
  } else {
    strokeWeight (1);
    stroke (255);
  }
}

void introClicks () {
  if (mouseX > 200 && mouseX < 350 && mouseY > 250 && mouseY < 400) {
    mode = GAME;
    AI = true;
  }
  if (mouseX > 450 && mouseX < 620 && mouseY > 250 && mouseY < 400) {
    mode = GAME;
    AI = false;
  }
}
