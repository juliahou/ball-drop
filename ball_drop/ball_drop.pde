import java.util.*;

int display_horizontal = 1000;
int display_vertical = 800;

int level;
int goal;
int total_height;
int average_score;
float viscosity;

float spring = 0.05;
float gravity = 0.08;
float friction = -0.2;
float air_viscosity = 1.0;
float water_viscosity = 0.1;

Ball ball = new Ball(0, mouseX, mouseY);
Water water = new Water(300);

void setup() {
  size(display_horizontal, display_vertical);
  level = 1;
  //goal = 
}

void draw() {
  background(255, 255, 255);
  if (mousePressed) {
    ball.diameter++;
    ball.x = mouseX;
    ball.y = mouseY;
  }
  water.display(display_horizontal, display_vertical);
  if (ball.exist) {
    ball.display();
    ball.move();
    if (submerged()) {
      viscosity = water_viscosity;
      if (!water.risen) {
        water.rise(ball.diameter);
      }
    }
    else {
      viscosity = air_viscosity;
    }
  }
}

void mousePressed() {
  ball = new Ball(mouseX, mouseY, 0);
  ball.exist = true;
}

boolean submerged() {
  //remember that in the display, the top is 0 and the bottom is display_vertical
  if (ball.y > display_vertical-water.height)
    return true;
  else
    return false;
}
