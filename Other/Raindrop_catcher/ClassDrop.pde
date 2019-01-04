class Drop {
  float x, y; // Variables for location of raindrop
  float speed; // Speed of raindrop
  color c;
  float r;
  
  Drop() {
    r = 8; // All raindrops are the same size
    x = random(width); // Start with a random x location
    y = -r*4; // Start a little above the window
    speed = random(1, 5); // Pick a random speed
    c = color(50, 100, 150); // Color
  }
  
  void move() {
    y += speed;
  }
  
  boolean reachedBottom() {
    if (y > height + r*4) {
      return true;
    } else {
      return false;
    }
  }
  void display() {
    fill(50, 100, 150);
    noStroke();
    for (int i = 2; i < r; i++) {
      ellipse(x, y + i*4, i*2, i*2);
    }
  }
   void caught() {
    speed = 0; // Stop it from moving by setting speed equal to zero
    y = -1000; // Set the location to somewhere way off-screen
  }
}
