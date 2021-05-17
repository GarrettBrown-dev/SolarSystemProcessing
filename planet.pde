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
       float d = random(100,200);
       planets[i] = new Planet(r, d);
     }
     
   }
   
   void show() {
     translate(distance, 0);
     rotate(angle);
     fill(255);
     ellipse(0,0, radius * 2, radius * 2);
     if (planets != null) {
       for (int i = 0; i < planets.length; i++) {
         planets[i].show();
      }
    }
 }
   
 }