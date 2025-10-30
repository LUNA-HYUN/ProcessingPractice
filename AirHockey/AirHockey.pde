float vx_b, vy_b, X_b, Y_b, vy_p1, vy_p2, Y_p1, Y_p2, time;
int s_p1, s_p2;
float moveSpeed = 5;
boolean Q_pressed = false;
boolean A_pressed = false;
boolean P_pressed = false;
boolean L_pressed = false;
boolean mouse_pressed = false;

void setup(){
  size(800 , 400);
  background(0, 0, 0);
  
  if (random(1) < 0.5)
    vx_b = random(4, 6);
  else
    vx_b = random(-4, -6);
  
  if (random(1) < 0.5)
    vy_b = random(4, 6);
  else
    vy_b = random(-4, -6);
     
  X_b = width / 2;  Y_b = height / 2;
  vy_p1 = 7;  vy_p2 = 7;
  Y_p1 = 175; Y_p2 = 175;
  time = 0;
}

void draw(){
  if (s_p1 == 5 ||  s_p2 == 5 || time == 180){
    mouse_pressed = false;
    if (s_p1 > s_p2){
      text("P1 WIN!", width / 2 - 41, height / 2 - 35);
    }
    else if (s_p1 < s_p2){
      text("P2 WIN!", width / 2 - 41, height / 2 - 35);
    }
    else{
      text("DRAW!", width / 2 - 41, height / 2 - 35);
    }
    s_p1 = 0;  s_p2 = 0;   time = 0;
  }
  
  else if (mouse_pressed){
    background(0, 0, 0);
    time += 1./60.;
    
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
      mouse_pressed = false;
    }
  }
  
  else{
    textSize(20);
    text("press anywhere to start", width / 2 - 95, height / 2);
  }

}
