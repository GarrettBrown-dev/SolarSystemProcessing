class Planet {
  float radius;
  float angle;
  float distance;
  Planet[] planets;
  
  Planet(float r, float d) {
    radius = r;
    distance = d;
    angle = 0;
  }
    
    void spawnMoons(int total) {
      planets = new Planet[total];
      for (int i = 0; i < planets.length; i++) {
        float r = radius * 0.5;
        float d = random(75,100);
        planets[i] = new Planet(r, d);
      }
      
    }
    
    void show() {
      pushMatrix();
      fill(255, 100);
      translate(distance, 0); //Translations are cumulative!
      rotate(angle);
      ellipse(0,0, radius * 2, radius * 2);
      if(planets != null) {
        for (int i = 0; i < planets.length; i++) {
          planets[i].show();
        }
      }
      popMatrix();
    }
    
  }