//BRUNO NICOLAS OROSCO
// COMISION 5
// LEGAJO 85231/8

PImage imagen ;
void setup() {

  size (800, 400);
  imagen = loadImage("herramientas.png");
  imagen.resize (400, 400);
  background(255);
}

void draw() {

  beginShape(); //contorno de sierra
  fill (#EA9832);
  vertex(190, 244);
  vertex(200, 237);
  vertex(209, 239);
  vertex(236, 278);
  vertex(235, 306);
  vertex(207, 331);
  vertex(171, 324);
  vertex(142, 289);
  vertex(143, 283);
  vertex(146, 277);
  vertex(59, 166);
  vertex(77, 149);
  vertex(91, 147);
  vertex(90, 160);
  vertex(103, 157);
  vertex(103, 171);
  vertex(115, 168);
  vertex(115, 180);
  vertex(126, 177);
  vertex(127, 190);
  vertex(140, 189);
  vertex(139, 202);
  vertex(154, 199);
  vertex(152, 214);
  vertex(165, 210);
  vertex(164, 222);
  vertex(178, 220);
  vertex(177, 232);
  vertex(190, 232);
  vertex(189, 245);
  vertex(199, 237);

  endShape();


  beginShape(); //cabo sierra
  fill(255);
  vertex(168, 290);
  vertex(201, 264);
  vertex(218, 286);
  vertex(214, 302);
  vertex(198, 313);
  vertex(183, 307);
  vertex(169, 288);

  endShape();

  beginShape(); //
  fill(60);

  vertex(189, 244);
  vertex(180, 252);
  vertex(181, 237);
  vertex(168, 240);
  vertex(170, 228);
  vertex(156, 231);
  vertex(158, 217);
  vertex(143, 220);
  vertex(145, 207);
  vertex(132, 210);
  vertex(131, 198);
  vertex(119, 200);
  vertex(119, 188);
  vertex(107, 187);
  vertex(106, 175);
  vertex(95, 178);
  vertex(94, 167);
  vertex(82, 167);
  vertex(81, 150);
  vertex(59, 166);
  vertex(59, 169);
  vertex(146, 278);
  vertex(180, 251);

  endShape();

  beginShape (); //acha
  fill(255);
  vertex(302, 168);
  vertex(276, 169);
  vertex(243, 177);
  vertex(228, 185);
  vertex(220, 157);
  vertex(222, 121);
  vertex(234, 89);
  vertex(246, 66);
  vertex(267, 87);
  vertex(301, 104);
  vertex(353, 114);
  vertex(342, 168);
  vertex(337, 171);
  vertex(331, 170);
  endShape();

  beginShape (); //mango acha
  fill(#BCAB67);


  vertex(302, 168);
  vertex(276, 274);
  vertex(288, 282);
  vertex(305, 285);
  vertex(315, 282);
  vertex(332, 170);
  endShape();
  beginShape (); //detalles acha


  fill (#D8D6D0);
  vertex(244, 178);
  vertex(241, 154);
  vertex(243, 121);
  vertex(251, 96);
  vertex(257, 80);
  vertex(277, 95);
  vertex(300, 103);
  vertex(294, 135);
  vertex(291, 166);
  vertex(269, 169);
  vertex(243, 176);

  endShape();

  beginShape (); //detalles acha


  fill (#A09F9B);



  vertex(300, 103);
  vertex(352, 114);
  vertex(340, 169);
  vertex(290, 167);
  vertex(301, 103);

  endShape();


  fill(255);
  fill(255);
  line(309, 166, 298, 223);
  line(304, 219, 291, 274);
  line(319, 170, 312, 207);
  line(317, 231, 306, 283);
  fill(#C7C9C1);
  line(110, 225, 138, 259);

  //image (imagen ,0,0);
  image(imagen, width/2, 0);
}
void mousePressed() {
  println ("vertex("+mouseX+","+mouseY+");");
  //println ("line("+mouseX+","+mouseY+", "+mouseX+","+mouseY+");");
}
