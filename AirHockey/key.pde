void keyPressed(){
  if (key == 'q' || key == 'Q' || key == 'ㅂ') Q_pressed = true;
  if (key == 'a' || key == 'A' || key == 'ㅁ') A_pressed = true;
  if (key == 'p' || key == 'P' || key == 'ㅔ') P_pressed = true;
  if (key == 'l' || key == 'L' || key == 'ㅣ') L_pressed = true;
}

void keyReleased(){
  if (key == 'q' || key == 'Q' || key == 'ㅂ') Q_pressed = false;
  if (key == 'a' || key == 'A' || key == 'ㅁ') A_pressed = false;
  if (key == 'p' || key == 'P' || key == 'ㅔ') P_pressed = false;
  if (key == 'l' || key == 'L' || key == 'ㅣ') L_pressed = false;
}
