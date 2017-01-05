class Water {
 
 float height;
 boolean risen;

  Water(float h) {
    height = h;
    risen = false;
  }
  
  void rise(float diameter) {
    print(height);
    height += 3.14 * pow(diameter/2, 3) / display_horizontal;
    print(height);
    risen = true;
  }
  
  void display(int display_horizontal, int display_vertical) {
    fill(0, 0, 255);
    rect(0, display_vertical-height, display_horizontal, height);
  }
} 
