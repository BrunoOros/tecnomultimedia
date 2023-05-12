//BRUNO NICOLAS OROSCO (85231/8)
//


String pantalla;
int tiempo;
boolean go = false;
PFont fuente;
PImage imagen1, imagen2, imagen3, imagen4;
float posX, posY, posXX, velocidad;

void setup() {
  size (640, 480);
  pantalla = "inicio";
  imagen1 = loadImage("destornillador1.jpg");
  imagen2 = loadImage("destornillador2.jpg");
  imagen3 = loadImage("destornillador3.jpg");
  imagen4 = loadImage("destornillador4.jpg");
  fuente = createFont("Cambria-BoldItalic-48.vlw", 40);
  posY= 600;
  posX = -300;
  posXX= 880;
  velocidad = 1.7;
}



void draw() {
  println(mouseX, mouseY, pantalla, tiempo, posX, posY);


  //////////////CondicionES para mover texto//////////////

  if (posX<320 && pantalla.equals("pantalla1")) {
    posX+=1*velocidad;
  }
  if (posY>height/3 && pantalla.equals("pantalla2")) {
    posY-=1*velocidad;
  }
  if (posXX>320 && pantalla.equals("pantalla3")) {
    posXX-=1*velocidad;
  }




  ///////7/////////Inicializo tiempo////////////////////////

  if (go==true) {
    tiempo ++;
  }


  /////////////////Condiciones para cambiar pantallas segun el teimpo//////////////
  if (tiempo>= 550 ) {
    pantalla = "pantalla2";
  }

  if (tiempo>=1000) {
    pantalla = "pantalla3";
  }

  if (tiempo>= 1600) {
    pantalla = "pantalla4";
  }




  ////////////////Dibujo cada pantalla///////////////

  if (pantalla.equals ("inicio")) {

    background(#68ACBC);
    rectMode(CENTER);
    fill(255, 10, 0);
    rect (width/2, height/1.5, 200, 50);
    strokeWeight (2);
    line (293, 306, 293, 335);
    line (293, 306, 343, 320);
    line (293, 335, 343, 320);
    textAlign(CENTER);
    // textSize(50);
    fill(255);
    textFont(fuente);
    text ("EL DESTORNILLADOR", width/2, height/3);
  }
  if (pantalla.equals ("pantalla1")) {

    //background(imagen1);
    image (imagen1, 0, 0, 640, 480);
    fill(#68ACBC, 130);
    rect (width/2, height/2, 480, 300);
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("Origen antiguo:\n El destornillador tiene sus raíces en el siglo XV,\n pero su uso generalizado se desarrolló en el siglo XIX\n con la popularización de los tornillos.", posX, height/3);
  }
  if (pantalla.equals("pantalla2")) {

    image (imagen2, 0, 0, 640, 480);
    fill(#68ACBC, 140);
    rect (width/2, height/2, 480, 300);
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("Variedad de puntas:\n Existen diferentes tipos de puntas de destornillador,\n como planas, Phillips, Pozidriv, Torx, Allen y Robertson,\n entre otras. Cada una está diseñada para adaptarse\n a diferentes tipos de tornillos y\n garantizar un ajuste seguro.", width/2, posY);
  }
  if (pantalla.equals("pantalla3")) {
    image (imagen3, 0, 0, 640, 480);
    fill(#68ACBC, 130);
    rect (width/2, height/2, 480, 300);
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("El destornillador tal como lo conocemos hoy en día,\n con una empuñadura y una punta en forma\n de hoja, se atribuye comúnmente a Henry F. Phillips.\n En 1936, Phillips patentó un diseño de destornillador\n que facilitaba el apriete y el aflojamiento de\n tornillos mediante una punta en forma de cruz con\n un ángulo especial.", posXX, height/3);
  }
  if (pantalla.equals("pantalla4")) {
    image (imagen4, 0, 0, 640, 480);
    fill(#68ACBC, 130);
    rect (width/2, height/2, 480, 300);
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("El destornillador más grande:\n En 2010, se creó el destornillador más grande del\n mundo en Alemania. Tenía un mango de 3,56 metros\n de largo y una punta de 0,42 metros.\n ¡Definitivamente no es una herramienta para el\n uso diario!", posXX, posY);
    fill(255, 0, 0);
    rect (width/2, height/2+195, 200, 70);

    fill(0);
    textSize (40);
    text ("Reiniciar", width/2, height/2+200);
  }
}

////////////////////Boton inicio y reinicio////////////////////////

void mousePressed() {

  if (mouseX >= 220 && mouseX <= 420 && mouseY>=296 && mouseY<=345) {
    pantalla = "pantalla1";
    go = true;
  }
  if (pantalla.equals ("pantalla4") && mouseX >= 220 && mouseX <=420  && mouseY>=400 && mouseY<=470) {
    pantalla = "inicio";
    go = false;
    tiempo =0;
    posY= 600;
    posX = -300;
    posXX= 880;
  }
}
