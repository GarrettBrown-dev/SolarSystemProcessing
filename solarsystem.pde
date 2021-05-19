import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

Planet sun; //I know it's not a planet.

PeasyCam cam;

PImage img;

void setup() {
  size(600, 600, P3D);
  img = loadImage("sun.jpg");
  cam = new PeasyCam(this, 400);
  sun = new Planet(50, 0, 0);
  sun.spawnMoons(4, 1);
}

void draw() {
  background(0);
  lights();
  sun.show();
  sun.orbit();
}