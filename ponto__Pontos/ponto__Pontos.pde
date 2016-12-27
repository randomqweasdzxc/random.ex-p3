Ponto[] pontos = new Ponto[4];
void setup() {
  size(200, 200); 
  for (int i = 0; i < pontos.length; i++) {
    pontos[i] = new Ponto(random(width), random(height));
  }
}
void draw() {
  background(255);
  for (int i = 0; i < pontos.length; i++) {
    pontos[i].display();
    pontos[i].move();
    pontos[i].bounce();
  }
}
class Ponto {
  PVector loc;
  PVector vel;
  Ponto(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(noise(x), noise(y));
  }
  void move() {
    loc.add(vel);
  }
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(0, 127);
    ellipse(loc.x, loc.y, 4, 4);
  }
  void bounce() {
    loc.add(vel);
    if ((loc.x > width) || (loc.x < 0)) {
      vel.x = vel.x * -1;
    }
    if ((loc.y > height) || (loc.y < 0)) {
      vel.y = vel.y * -1;
    }
  }
}