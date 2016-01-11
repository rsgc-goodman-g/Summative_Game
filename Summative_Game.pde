//float Cup1 = ellipse(
float x;
float y;
float x1;
float x2;
float y3;

void setup() {
  x = 100;
  y = 250;
  x1 = 250;
  x2 = 400;
  y3 = 50;
  // Canvas
  size(500, 500);
}

void draw() {
  background(0);

  // Showing the ball in the beginning
  if (y3>y) {
    y3=y;
  } else {
    y3=y3+1;
  };

  // The Ball
  fill(255, 0, 0);
  ellipse(x, y3, 65, 65);

  // The Cups
  fill(100, 100, 255);
  ellipse(x, y, 125, 125);
  ellipse(x1, y, 125, 125);
  ellipse(x2, y, 125, 125);
}