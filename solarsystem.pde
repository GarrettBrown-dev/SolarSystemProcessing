import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

Planet sun; //I know it's not a planet.

PeasyCam cam;

PImage sunTexture;
PImage[] textures = new PImage[3];

void setup() {
  size(600, 600, P3D);
  sunTexture = loadImage("../textures/sun.jpg");
  textures[0] = loadImage("../textures/mars.jpg");
  textures[1] = loadImage("../textures/earth.jpg");
  textures[2] = loadImage("../textures/mercury.jpg");
  cam = new PeasyCam(this, 400);
  sun = new Planet(50, 0, 0, sunTexture);
  sun.spawnMoons(4, 1);
}

void draw() {
  background(0);
  lights();
  pointLight(255, 255, 255, 0, 0, 0);
  sun.show();
  sun.orbit();
}