void player1(float y_p1){
  rect(20, y_p1, 20, 50);
}

void player1_move(){
  if (Q_pressed) Y_p1 -= moveSpeed;
  if (A_pressed) Y_p1 += moveSpeed;
}
