int x = 0;


void setup() {
  background(0);
  size(500, 500);
  frameRate(30);
}

void draw() {
  if (frameCount % 1 == 0) {
    drawSineCurve(x, 50, 100, 10);
    x += 1;
    if (x >= 500) {
      x -= 500;
    }
  }
}

float getSineY(int theta, float amplitude, int k) {
    return (amplitude * sin(PI/750*theta) + k);
}

void drawSineCurve(int x, float amplitude, int k, int d) {
  stroke(255);  
  circle(x, getSineY(x, amplitude, k), d);
}
