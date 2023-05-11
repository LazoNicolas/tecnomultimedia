PImage img;
void setup() {
  size (800, 400);
  background (150, 162, 25 );
  img=loadImage("data/micro.jpg");
}

void draw() {
  image(img, 0, 0, 400, 400);


  stroke (136, 175, 204);
  fill (1, 98, 151);
  rect (400, 0, 400, 65); //cielo a
  fill (136, 175, 204);
  rect (400, 65, 400, 80); //cielo m
  fill(174, 196, 209);
  rect (400, 140, 400, 105); //cielo b


  stroke (120);
  fill (155);
  rect(715, 193, 85, 25); //puente


  stroke(67, 63, 62);
  fill (67, 63, 62);
  beginShape();
  vertex (400, 400); //piso
  vertex(400, 320); //piso
  vertex (740, 250); //piso
  vertex (745, 240); //piso
  vertex (800, 250); //piso
  vertex (800, 400); //piso
  endShape (CLOSE);

  stroke(0);

  stroke (118, 96, 55);
  fill (118, 96, 55);
  rect (428, 225, 3, 40); //arbol

  stroke (150, 162, 25 );
  fill (150, 162, 25);
  ellipse (430, 215, 45, 55); //arbol

  stroke (220);

  fill (250);
  rect(470, 120, 150, 210); //delantera
  rect (740, 220, 30, 50); //micro de atras

  beginShape();
  vertex (620, 20); //punto de arriba i
  vertex (715, 160); //punto de arriba d
  vertex (715, 280); //punto de abajo d
  vertex (620, 330); //punto de abajo i
  endShape (CLOSE);
  
  triangle (430,150,470,120,450,200);
  triangle (580,150,620,120,610,200);

stroke (0);

  fill (0);
  beginShape();
  vertex (470, 120);
  vertex (490, 50);
  vertex (620, 20);
  vertex (620, 120);
  endShape (CLOSE);


  ellipse (650, 300, 20, 70); //rueda
  ellipse (700, 280, 10, 50); //rueda

  stroke (242, 212, 59);
  fill (247, 223, 97);
  triangle (470, 290, 470, 250, 510, 290); //luces
  triangle (575, 290, 620, 290, 620, 250); //luces
}
