class Walker {
  int x, y;
  Walker() {
    x = width/2;
    y = height/2;
  }
  void show() {
    noStroke();
    fill(random(40, 240));
    ellipse(x, y, 20, 20);
  }
  void walk() {
    int choice = int(random(4));
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}