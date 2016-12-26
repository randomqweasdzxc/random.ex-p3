class Mover {
  PVector position;
  PVector velocity;
  PVector acceleration;
  Mover() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  void move() {
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity);
  }
  void bounce() {
    if (position.x > width) position.x = 0;
    if (position.x < 0) position.x = width;
    if (position.y > height) position.y = 0;
    if (position.y < 0) position.y = height;
  }
  void display() {
    stroke(0);
    fill(175);
    ellipse(position.x, position.y, 46, 46);
  }
}
/*
velocity = new PVector(2.5, -2);
 move:
 velocity.add(acceleration);
 position.add(velocity);
 */