class Tree implements Serializable{

  ArrayList<Line> vertices = new ArrayList<Line>();

  Tree() {
  }

  void addLine(Line v) {
    vertices.add(v);
  }

  void addLine(PVector a, PVector b) {
    Line l = new Line(a, b);
    vertices.add(l);
  }

  void render() {
    stroke(255);
    for ( Line l : vertices) {
      line(l.a.x, l.a.y, l.a.z, l.b.x, l.b.y, l.b.z);
    }
  }
}

class Line {
  PVector a, b;

  Line(PVector a, PVector b) {
    this.a = a;
    this.b = b;
  }
}


String[][] rules = new String[10][2];

rules[0] = {"A","AB"};
rules[0] = {"A","AB"};
