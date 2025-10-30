void UI(){
  square(360, 10, 40);
  square(400, 10, 40);
  fill(0, 0, 0);
  textSize(25);
  text(s_p1, 365, 30);
  text(s_p2, 405, 30);
  fill(255, 255, 255);
  text(int((180 - time)/60) + ":" + int(180-time) % 60, 382, 80);
}

void mousePressed(){
  mouse_pressed = true;
}
