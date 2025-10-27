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
    
  if (checkCollison_X(X_b, Y_b, 20, 20, Y_p1, 20, 50) || checkCollison_X(X_b, Y_b, 20, 760, Y_p2, 20, 50)){
    vx_b *= -1;
  }
}

boolean checkCollison_X(float cx, float cy, float cr, float rx, float ry, float rw, float rh){
  float minX = rx;
  float maxX = rx + rw;
  float minY = ry;
  float maxY = ry + rh;
  
  float closestX = constrain(cx, minX, maxX);
  float closestY = constrain(cy, minY, maxY);
  
  float distance = dist(cx, cy, closestX, closestY);
  
  if (distance < cr) return true;
  return false;
}
  
