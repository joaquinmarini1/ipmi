 PImage pinguino;
  
  void setup() {
  size(800, 400);
  background(255);
  rectMode(CENTER);
  pinguino = loadImage("pinguino.png");
  }
  void draw() {
  image(pinguino, 450, 0, 400, 400);
  
    fill(255, 85, 0);
    noStroke();
    rect(380, 350, 30, 30);
    rect(315, 350, 30, 30);
    triangle(294, 359, 335, 359, 315, 380);
    triangle(359, 359, 401, 359, 380, 380);

  stroke(0);
  fill(0);
  ellipse(349, 230, 190, 250);
  ellipse(350, 98, 150, 127);
  
  
  fill(255);
  ellipse(349, 210, 120, 190);
  noStroke();
  ellipse(319, 110, 50, 50);
  ellipse(382, 110, 50, 50);
  
  
  fill(255, 85, 0);
  triangle(333, 100, 368, 100, 351, 133);
  
  fill(0);
  triangle(427, 158, 485, 221, 439, 205);
  triangle(271, 158, 210, 221, 264, 205);
  
  fill(0);
  ellipse(382, 108, 20, 20);
  ellipse(321, 108, 20, 20);
  
  fill(255);
  ellipse(318, 103, 5, 5);
  ellipse(379, 103, 5, 5);
  
  stroke(127);
  strokeWeight(4);
  line(319, 210, 316, 175);
  line(342, 170, 344, 216);
  line(382, 210, 384, 175);
  line (361, 173, 362, 208
);

  
  

  }
  
  void mouseClicked() {
  println(mouseX, mouseY);
  }
