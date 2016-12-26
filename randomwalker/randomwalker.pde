Walker w;
Walker q;
void setup() {
  size(400, 400);
  w = new Walker();
  q = new Walker();
  background(0);
}
void draw() {
  w.walk();
  w.show();
  q.walk();
  q.show();
}