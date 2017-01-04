import java.util.*;

int display_horizontal = 1000;
int display_vertical = 800;

int level;
int total_height;
int average_score;

float spring = 0.05;
float gravity = 0.08;
float friction = -0.9;

Ball ball = new Ball(0, mouseX, mouseY);
Water water = new Water(100);

void setup() {
  size(display_horizontal, display_vertical);
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
  }
}

void mousePressed() {
  ball = new Ball(mouseX, mouseY, 0);
  ball.exist = true;
}
