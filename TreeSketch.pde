import peasy.*;
import java.util.*;
import java.io.*;


PeasyCam cam;

//File file = new File (sketchPath("") + "treeData");
Tree tree =  new Tree();
//Tree tree  = loadTree(file);

void setup() {
  size(200, 200, P3D);
  cam = new PeasyCam(this, 100);

  buildTree(new PVector(0, 0), new PVector(0, -1), 0);
}

void buildTree(PVector start, PVector direction, int level) {
  if (level > 5) return;
  direction.normalize().add(PVector.random3D());

  PVector a = start.copy();
  PVector b = a.copy().add(direction).mult(10);

  print(a);
  print(b);
  Line l = new Line(a, b);
  tree.addLine(l);


  buildTree(b, direction, ++level);
  buildTree(b, direction, ++level);
}

void keyPressed() {
  if (key == 's') {
    //Save
      
  File file = new File (sketchPath("") + "treeData");
  saveData(file, tree);
  // Load the data into second object and display it

  //println("Data after seriaization");
  
  }
}
void draw() {
  background(0);
  tree.render();
}
