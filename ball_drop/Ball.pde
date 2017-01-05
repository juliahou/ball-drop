//code from https://processing.org/examples/bouncybubbles.html
class Ball {
  
  float x, y;
  float diameter;
  float vx = 0;
  float vy = 0;
  boolean exist;
 
  Ball(float xin, float yin, float din) {
    x = xin;
    y = yin;
    diameter = din;
  } 
  
  void move() {
    vy += gravity;
    x += vx * viscosity;
    y += vy * viscosity;
    if (x + diameter/2 > width) {
      x = width - diameter/2;
      vx *= friction; 
    }
    else if (x - diameter/2 < 0) {
      x = diameter/2;
      vx *= friction;
    }
    if (y + diameter/2 > height) {
      y = height - diameter/2;
      vy *= friction; 
    } 
    else if (y - diameter/2 < 0) {
      y = diameter/2;
      vy *= friction;
    }
  }
  
  void display() {
    fill(255, 0, 0);
    ellipse(x, y, diameter, diameter);
  }
}
