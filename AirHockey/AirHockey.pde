float vx_b, vy_b, X_b, Y_b, vy_p1, vy_p2, Y_p1, Y_p2;
int s_p1, s_p2;
float moveSpeed = 5;
boolean Q_pressed = false;
boolean A_pressed = false;
boolean P_pressed = false;
boolean L_pressed = false;
boolean mouse = false;

void setup(){
  size(800 , 400);
  background(0, 0, 0);
  
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
  if (mouse){
  background(0, 0, 0);
  
  player1(Y_p1);
  player1_move();
  player2(Y_p2);
  player2_move();
  
  ball(X_b, Y_b);
  ball_move();
  
  UI();
  
  if (X_b > width || X_b < 0){
    X_b = width / 2;  Y_b = height / 2;
    Y_p1 = 175; Y_p2 = 175;
    mouse = false;
  }
  }
  else{
    textSize(20);
    text("press anywhere to start", width / 2 - 100, height / 2);
  }
}
