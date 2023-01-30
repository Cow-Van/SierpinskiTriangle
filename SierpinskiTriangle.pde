public void setup() {
  size(500, 500);
}

public void draw() {
  sierpinski(0, 500, 1000000);
}

public void mouseDragged() {

}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x + len / 2f, y - len, x + len, y);
    return;
  }
  
  sierpinski(x, y, len / 2);
  sierpinski(x + len / 2, y, len / 2);
  sierpinski(x + len / 4, y - len / 2, len / 2);
}
