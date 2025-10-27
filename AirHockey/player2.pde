void player2(float y_p2){
  rect(760, y_p2, 20, 50);
}

void player2_move(){
  if (P_pressed) Y_p2 -= moveSpeed;
  if (L_pressed) Y_p2 += moveSpeed;
}
