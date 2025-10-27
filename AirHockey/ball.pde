void ball(float x_b, float y_b){
  circle(x_b, y_b, 40);
}

void ball_move(){
  X_b += vx_b;
  Y_b += vy_b;
  if (X_b < 0 || X_b > width)
    vx_b *= -1;
  if (Y_b < 0 || Y_b > height)
    vy_b *= -1;
}
