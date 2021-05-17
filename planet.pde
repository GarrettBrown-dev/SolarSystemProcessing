class Planet {
  float radius;
  float angle;
  float distance;
  
  Planet(float r, float d) {
    radius = r;
    distance = d;
    angle = 0;
}
  
  void show() {
    fill(255);
    ellipse(0,0, radius * 2, radius * 2);
}
  
}