class Water {
 
 int height;

  Water(int h) {
    height = h;
  }
  
  void rise(int diameter) {
  }
  
  void display(int display_horizontal, int display_vertical) {
    fill(0, 0, 255);
    rect(0, display_vertical-height, display_horizontal, height);
  }
} 
