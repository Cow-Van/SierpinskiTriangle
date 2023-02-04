float rotation = 0.5;

public void setup() {
  noStroke();
  size(500, 500, P3D);
  //frameRate(5);
}

public void draw() {
  background(0);
  sierpinski(0, 500, 500);
  sierpinski(500, 500, 500);
  sierpinski(-500, 500, 500);
  rotation *= 0.999;
}

public void sierpinski(float x, float y, float len) {
  fill(randomColor());
  
  if (len <= 20) {
    rotateY(PI * rotation);
    triangle(x, y, x + len / 2f, y - len, x + len, y);
    return;
  }
  
  sierpinski(x, y, len / 2);
  sierpinski(x + len / 2, y, len / 2);
  sierpinski(x + len / 4, y - len / 2, len / 2);
}

public color randomColor() {
  return color(random(255), random(255), random(255));
}
