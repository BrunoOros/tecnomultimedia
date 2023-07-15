//https://youtu.be/vFIknhtfp9Q
//Bruno Nicolas Orosco
//legajo:85231/8

int pantalla=0;
boolean on;
int img=23;
PImage []imagenes = new PImage[img];
PImage flujo, libro;
void setup() {
  size (600, 600);
  
  for (int i=0; i<=22; i++) {
    int pos = i +1;
    imagenes[i]= loadImage("pantalla"+pos+".png");
  }
  flujo= loadImage("flujo.png");
  libro= loadImage("libro.jpg");

}



void draw() {
  println(pantalla);
  dibujarPantallas();
  println(mouseX, mouseY);

}


void dibujarPantallas() {
  //PANTALLA INICIO
  if (pantalla==0) {
    background(0);
    textSize(50);
    text("Sombra Mortal\n Aventura Grafica", 130, 180);
    textSize(20);

    text("Creditos/\nInstrucciones", 160, 420);
    text("Flujo", 280, 420);
    text("Iniciar", 380, 420);
    
    dibujarBoton("circular", width/2-100, height/2+50, 80, 1 );
    dibujarBoton("circular", width/2, height/2+50, 80, 2 );
    dibujarBoton("circular", width/2+100, height/2+50, 80, 3 );
  }
  //PANTALLA CREDITOS
  else if (pantalla==1) {
    contenidoPantallas1();
    text("Inicio", 45, 25);
    dibujarBoton("circular", 20, 20, 40, 0 );
  }
  //PÁNTALLA FLUJO
  else if (pantalla==2) {
    contenidoPantallas2();
    text("Inicio", 45, 25);

    dibujarBoton("circular", 20, 20, 40, 0 );
  }
  //PANTALLA AVENTURA
  else if (pantalla==3) {
    contenidoPantallas3();
    fill(150, 0, 0);
    dibujarBoton("circular", 550, 550, 50, 4 );
  } 
  else if (pantalla==4) {
    contenidoPantallas4();
    dibujarBoton("circular", 550, 550, 50, 5 );
  } 
  else if (pantalla==5) {
    contenidoPantallas5();
    //background(0);
    dibujarBoton("circular", 550, 550, 50, 6 );
  } 
  else if (pantalla==6) {
    contenidoPantallas6();
    dibujarBoton("circular", 550, 550, 50, 7 );
  }
  else if (pantalla==7) {
    contenidoPantallas7();
    dibujarBoton("circular", 550, 550, 50, 8 );
  } 
  else if (pantalla==8) {
    contenidoPantallas8();
    dibujarBoton("circular", 550, 550, 50, 9 );
  } 
  else if (pantalla==9) {
    contenidoPantallas9();
    dibujarBoton("circular", 550, 550, 50, 10 );
  } 
  else if (pantalla==10) {
    contenidoPantallas10();
    dibujarBoton("circular", 550, 550, 50, 11 );
  } 
  else if (pantalla==11) {
    contenidoPantallas11();
    dibujarBoton("circular", 550, 550, 50, 12 );
  } 
  else if (pantalla==12) {
    contenidoPantallas12();
    dibujarBoton("circular", 550, 550, 50, 13 );
  } 
  else if (pantalla==13) {
    contenidoPantallas13();
    dibujarBoton("circular", 550, 550, 50, 21 );
    dibujarBoton("circular", 50, 550, 50, 14 );
  } 
  else if (pantalla==14) {
    contenidoPantallas14();
    dibujarBoton("circular", 550, 550, 50, 15 );
  } 
  else if (pantalla==15) {
    contenidoPantallas15();
    dibujarBoton("circular", 550, 550, 50, 16 );
  } 
  else if (pantalla==16) {
    contenidoPantallas16();
    dibujarBoton("circular", 550, 550, 50, 17 );
  } 
  else if (pantalla==17) {
    contenidoPantallas17();
    dibujarBoton("circular", 550, 550, 50, 18 );
  } 
  else if (pantalla==18) {
    contenidoPantallas18();//
    dibujarBoton("circular", 550, 550, 50, 20 );
    dibujarBoton("circular", 50, 550, 50, 19 );
  } 
  else if (pantalla==19) {
    contenidoPantallas19();
    dibujarBoton("circular", 550, 550, 50, 26 );
  } 
  else if (pantalla==20) {
    contenidoPantallas20();
    dibujarBoton("circular", 550, 550, 50, 26 );
  } 
  else if (pantalla==21) {
    contenidoPantallas21();
    dibujarBoton("circular", 550, 550, 50, 22);
  } 
  else if (pantalla==22) {
    contenidoPantallas22();
    dibujarBoton("circular", 550, 550, 50, 23);
  } 
  else if (pantalla==23) {
    contenidoPantallas23();
    dibujarBoton("circular", 550, 550, 50, 24);
  } 
  else if (pantalla==24) {
    contenidoPantallas24();
    dibujarBoton("circular", 550, 550, 50, 25);
  } 
  else if (pantalla==25) {
    contenidoPantallas25();
    dibujarBoton("circular", 550, 550, 50, 26);
  } 
  else if (pantalla==26) {
    contenidoPantallas26();
    text("Inicio", 45, 25);
    dibujarBoton("circular", 20, 20, 40, 0 );
    fill(255);
  }
}
void mouseMoved() {
  on = true;
}
