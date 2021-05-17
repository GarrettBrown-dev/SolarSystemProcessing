Planet sun; //I know it's not a planet.

void setup() {
  size(600, 600);
  sun = new Planet(100, 0);
}

void draw() {
  background(0);
  sun.show();
}