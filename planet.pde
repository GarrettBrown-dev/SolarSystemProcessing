class Planet {
  float radius;
  float angle;
  float distance;
  Planet[] planets;
  float orbitSpeed;
  
  Planet(float r, float d) {
    radius = r;
    distance = d;
    angle = random(TWO_PI);
    orbitSpeed = random(0.1, 0.3);
  }
    void orbit() {
      angle = angle + orbitSpeed;
      if(planets != null) {
        for (int i = 0; i < planets.length; i++) {
          planets[i].orbit();
        }
      }
    }
    
    void spawnMoons(int total) {
      planets = new Planet[total];
      for (int i = 0; i < planets.length; i++) {
        float r = radius * 0.5;
        float d = random(75,300);
        planets[i] = new Planet(r, d);
      }
      
    }
    
    
    void show() {
      pushMatrix();
      fill(255, 100);
      rotate(angle);
      translate(distance, 0); //Translations are cumulative!
      ellipse(0,0, radius * 2, radius * 2);
      if(planets != null) {
        for (int i = 0; i < planets.length; i++) {
          planets[i].show();
        }
      }
      popMatrix();
    }
    
  }