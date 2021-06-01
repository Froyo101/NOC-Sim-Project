public class Vect2D {
  float x, y;

  Vect2D(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void add(Vect2D v) {
    x += v.x;
    y += v.y;
  }

  void sub(Vect2D v) {
    x -= v.x;
    y -= v.y;
  }

  void mult(float c) {
    x *= c;
    y *= c;
  }

  void div(float c) {
    x /= c;
    y /= c;
  }

  float mag() {
    return sqrt(x*x + y*y);
  }

  void norm() {
    float m = mag();
    if (m != 0) {
      div(m);
    }
  }

  void setMag(float c) {
    norm();
    mult(c);
  }

  void limit(float c) {
    if (mag() > c) {
      setMag(c);
    }
  }
}
