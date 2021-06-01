public class Mover {
  Vect2D pos, vel, acc, size;
  float maxVel;

  Mover() {
    pos = new Vect2D(random(width), random(height));
    vel = new Vect2D(random(-3, 3), random(-3, 3));
    acc = new Vect2D((random(-5, 5) / 1000), (random(-5, 5) / 1000));
    size = new Vect2D(random(10, 20), random(10, 20));
    maxVel = 7;
  }

  void update() {
    vel.add(acc);
    vel.limit(maxVel);
    pos.add(vel);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x, pos.y, size.x, size.y);
  }

  void checkEdges() {
    if (pos.x > width) {
      pos.x = 0;
    } 
    else if (pos.x < 0) {
      pos.x = width;
    }

    if (pos.y > height) {
      pos.y = 0;
    } 
    else if (pos.y < 0) {
      pos.y = height;
    }
  }
}