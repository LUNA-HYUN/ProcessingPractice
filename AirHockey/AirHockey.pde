float vx_b, vy_b, X_b, Y_b, vy_p1, vy_p2, Y_p1, Y_p2;
float moveSpeed = 5;
boolean Q_pressed = false;
boolean A_pressed = false;
boolean P_pressed = false;
boolean L_pressed = false;

void setup(){
  size(800 , 400);
  
  if (random(1) < 0.5)
    vx_b = random(3, 6);
  else
    vx_b = random(-3, -6);
  
  if (random(1) < 0.5)
    vy_b = random(3, 6);
  else
    vy_b = random(-3, -6);
     
  X_b = width / 2;  Y_b = height / 2;
  vy_p1 = 7;  vy_p2 = 7;
  Y_p1 = 175; Y_p2 = 175;
}

void draw(){
  background(0, 0, 0);
  player1(Y_p1);
  player1_move();
  player2(Y_p2);
  player2_move();
  ball(X_b, Y_b);
  ball_move();
}
