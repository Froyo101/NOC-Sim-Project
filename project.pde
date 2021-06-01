Mover m1, m2, m3;

void setup() {
  size (640, 480);
  m1 = new Mover();
  m2 = new Mover();
  m3 = new Mover();
}

void draw() {
  background(255);

  m1.update();
  m1.checkEdges();
  m1.display();

  m2.update();
  m2.checkEdges();
  m2.display();

  m3.update();
  m3.checkEdges();
  m3.display();
}