void game() {
  background(220);
  angleDiff = carTargetAngle - carAngle;

  //animate cars
  if (wKey) {
    //set angle
    carTargetAngle = 0;
    //accelerate in facing direction
    carVX += 0;
    carVY -= 0.3;
  }
  if (sKey) {
    carTargetAngle = PI;
    //accelerate in facing direction
    carVX += 0;
    carVY += 0.3;
    if(angleDiff > PI || angleDiff < -PI) angleDiff += 2 * PI;
  }
  if (aKey) {
    carTargetAngle = - PI / 2;
    //accelerate in facing direction
    carVX -= 0.3;
    carVY += 0;
    
    if(angleDiff > PI || angleDiff < -PI) angleDiff += 2 * PI;
  }
  if (dKey) {
    carTargetAngle =  PI / 2;
    //accelerate in facing direction
    carVX += 0.3;
    carVY += 0;
  }

  carVX *= friction;
  carVY *= friction;
  carBodyX += carVX;
  carBodyY += carVY;
  carAngle += angleDiff * 0.05;

  //draw race car
  pushMatrix();
  translate(carBodyX, carBodyY);
  rotate(carAngle);
  fill(255);
  ellipse(0, 0, carBodyL, carBodyW);
  circle(0, -carBodyL / 2, carTipD);
  popMatrix();
}

void gameClicks() {
}
