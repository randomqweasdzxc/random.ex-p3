Mover m;
void setup() {
  size(800, 300);
  m = new Mover();
}
void draw() {
  background(255);
  m.move();
  m.bounce();
  m.display();
}