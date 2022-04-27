import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sv
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//mode framework
// ints - integers , floats - decimals , strings - sentences or text, booleans - true and false

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, leftr,
  rightx, righty, rightd, rightr; //paddles
float ballx, bally, balld, ballr; //ball
float d1, d2; //distance between ball and paddle
float vx, vy; //ball position

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//ai
boolean AI;

void setup () {
  //minim
  minim = new Minim (this);
  theme = minim.loadFile ("mario bros theme.mp3");
  coin = minim.loadFile ("coin.wav");
  bump = minim.loadFile ("bump.wav");
  gameover = minim.loadFile ("gameover.wav");
  
  size (800, 600); //(w,h)
  textAlign (CENTER, CENTER);
  rectMode (CENTER);
  mode = INTRO;

  //ball movement initialization
  vx= -3; //random (-3,3);
  vy = 3; //random (-3,3);

  //intialize paddles
  leftx = 0;
  lefty = height/2; //height of screen/2
  leftd = 200;
  leftr = leftd/2;

  rightx = width;
  righty = height/2;
  rightd = 200;
  rightr = rightd/2;

  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  ballr = balld/2;
  
  //initialize score
  rightscore = leftscore = 0;
  timer = 100;

  //initialize keyboard variables
  wkey = skey = upkey = downkey = false; //makes all variables false on one line
}

void draw () {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game ();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println ("Mode error: " + mode);
  }
}
