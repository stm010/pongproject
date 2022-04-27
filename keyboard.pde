void keyPressed () {
  //
  if (key == 'w' || key == 'W') wkey = true;//if w or W is pressed
  if (key == 's' || key == 'S') skey = true; //reverse + and - due to programming scale system
  if (keyCode == UP) upkey = true; //keycode allows for arrow keys not a typeable symbol
  if (keyCode == DOWN) downkey = true;
}

void keyReleased () {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
}
