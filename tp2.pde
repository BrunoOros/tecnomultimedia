/*
Bruno Nicolás Orosco (85231/8)
Buenas profe no realice el video porque no pude realizar con exito el trabajo.
Creí que iba poder relizarlo sin mayor problemas, pero a la hora de hacerlo se
me complico demasiado ya que me lo plantee hacerlo con ciclo for en forma de grilla,
pero al intentarlo identifiqué todos los rects eran de distintos tamaños segun se 
acercaban al centro de la imagen lo cual me genero una gran dificultad, tambien crei
poder hacerlo con quad pero no tuve exito, considero que la imagen elegida es muy dificil.
Esto sumado al poco tiempo que pude invertile causó esta entrega incompleta que quise
entregar de todos modos como para tener una posible insancia de recuperatorio, saludos.
*/


int cant = 10;
int tam;
int tam2;
int tam3;
int tam4;
int tam5;
int tam6;
int tam7;
int tam8;
PImage MiImagen;
void setup() {
  size (800, 400);
  surface.setTitle ("TP-2-OP ART");
  //noStroke();
  tam = width/2/cant;
  tam2 = width/2/cant-5;
  tam3 = width/2/cant-10;
  tam4 = width/2/cant-15;
  tam5 = width/2/cant-20;
  tam6 = width/2/cant-25;
  tam7 = width/2/cant-30;
  tam8 = width/2/cant-35;
  MiImagen = loadImage("imagen.jpg");
}


void draw () {
  line (0, 0, 400, 400);
  line (0, 400, 400, 0);
  println(mouseX, mouseY);
  image (MiImagen, 0, 0, 400, 400);



  /*
pushMatrix();
   //fill(130);
   for (int x=0;x<cant;x++){
   for(int y=0;y<cant;y++){
   
   if((x+y)%2==0){
   fill(micolor);
   }else {
   fill(255);}
   rect (x*tam+width/2,y*tam,tam,tam);
   }
   
   //quad (0,0,100,0,100,100,0,100);
   }
   popMatrix();
   */

  /*
push();
   rectMode (CENTER);
   fill(0);
   rect (width/2,height/2,width-80,height-80);
   pop();
   */








  dibujarCuadrosGrandes();
  DibujarCuadros1();
  DibujarCuadros2();
  DibujarCuadros3();
  DibujarCuadros4();
  DibujarCuadros5();
  DibujarCuadros6();
  DibujarCuadros7();
}





void dibujarCuadrosGrandes() {
  pushMatrix();
  float micolor = map (mouseX, width/2, width, 0, 255);
  float mistroke = map (mouseY, 0, height, 0, 5);
  strokeWeight (mistroke);
  //fill(130);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {

      if ((x+y)%2==0) {
        fill(micolor);
      } else {
        fill(255);
      }
      rect (x*tam+width/2, y*tam, tam, tam);
    }

    //quad (0,0,100,0,100,100,0,100);
  }
  popMatrix();
}

void DibujarCuadros1() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(150);
  translate (40, 40);
  for (int x=0; x<cant-1; x++) {
    for (int y=0; y<cant-1; y++) {
      if ((x+y)%2==1) {
        fill(255);
      } else {
        fill(micolor);
      }
      rect (x*tam2+width/2, y*tam2, tam2+5, tam2+5);
    }
  }

  pop();
}

void DibujarCuadros2() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(170);
  translate (75, 75);
  for (int x=0; x<cant-2; x++) {
    for (int y=0; y<cant-2; y++) {
      if ((x+y)%2==0) {
        fill(micolor);
      } else {
        fill(255);
      }
      rect (x*tam3+width/2, y*tam3, tam3+5, tam3+5);
    }
  }
  pop();
}

void DibujarCuadros3() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(180);
  translate (105, 105);
  for (int x=0; x<cant-3; x++) {
    for (int y=0; y<cant-3; y++) {
      if ((x+y)%2==1) {
        fill(255);
      } else {
        fill(micolor);
      }
      rect (x*tam4+width/2, y*tam4, tam4+5, tam4+5);
    }
  }
  pop();
}

void DibujarCuadros4() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(190);
  translate (130, 130);
  for (int x=0; x<cant-4; x++) {
    for (int y=0; y<cant-4; y++) {
      if ((x+y)%2==0) {
        fill(micolor);
      } else {
        fill(255);
      }
      rect (x*tam5+width/2, y*tam5, tam5+5, tam5+5);
    }
  }

  pop();
}

void DibujarCuadros5() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(200);
  translate (150, 150);
  for (int x=0; x<cant-5; x++) {
    for (int y=0; y<cant-5; y++) {
      if ((x+y)%2==1) {
        fill(255);
      } else {
        fill(micolor);
      }
      rect (x*tam6+width/2, y*tam6, tam6+5, tam6+5);
    }
  }

  pop();
}

void DibujarCuadros6() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(200);
  translate (150, 150);
  for (int x=0; x<cant-5; x++) {
    for (int y=0; y<cant-5; y++) {
      if ((x+y)%2==1) {
        fill(255);
      } else {
        fill(micolor);
      }
      rect (x*tam6+width/2, y*tam6, tam6+5, tam6+5);
    }
  }

  pop();
}

void DibujarCuadros7() {
  push();
  float micolor = map (mouseX, width/2, width, 0, 255);
  //fill(230);
  translate (175, 175);
  for (int x=0; x<cant-7; x++) {
    for (int y=0; y<cant-7; y++) {
      if ((x+y)%2==1) {
        fill(255);
      } else {
        fill(micolor);
      }
      rect (x*tam8+width/2, y*tam8, tam8+5, tam8+5);
    }
  }

  pop();
}
