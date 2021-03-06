 class Ball {
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    x = random((width - rad) + rad/2);
    y = random((height - rad) + rad/2);
    rad = 5;
    c = color(r, g, b);
    dx = random(10) - 2;
    dy = random(10) - 3;
    state = 1;
  }

  void setup() {
    size(600, 600);
  }

  void draw() {
    background(0);  
    move();
  }
  
  void drawMe() {
    move();
    ellipse (x , y, rad, rad);
  }

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }

  void bounce() {
    if (y >= height || y <= 0)
      dy = -dy;
    if (x >= width || x <= 0)
      dx = -dx;
  }
}
