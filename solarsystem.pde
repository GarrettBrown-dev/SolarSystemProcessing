import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

Planet sun; //I know it's not a planet.

PeasyCam cam;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 100);
  sun = new Planet(50, 0, 0);
  sun.spawnMoons(1, 1);
}

void draw() {
  background(0);
  lights();
  translate(width / 2, height / 2);
  sun.show();
  sun.orbit();
}