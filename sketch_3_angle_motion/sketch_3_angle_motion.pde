float a = 0;
float aVel = 0.03;
float aAxe = 0.0;
void setup() {
  size(600, 400);
}
void draw() {
  background(255);

  a += aVel;
  aVel += aAxe;
//  aAxe = map(mouseX, 0, width, -0.001, 0.001);
  rectMode(CENTER);
  stroke(0);
  fill(127);
  translate(width/2, height/2);
  rotate(a);
  rect(0, 0, 64, 36);
}