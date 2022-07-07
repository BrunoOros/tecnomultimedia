//BRUNO NICOLAS OROSCO (85231/8)
//https://youtu.be/-ax5I0LvW_c


int dificultad;
int salto;
int botones;
int px=180;
int py=400;
int px1=150;
int py1=450;
int obsX = 600;
int obsV = -1;
int PosPelota = 270;
int VPelota=0;
int b[]  = new int [10];
int p=1;

void setup() {
  size (600, 400);
  b[0]=50;
  b[1]=500;
  b[2]=1050;
  b[3]=1500;
  b[4]=2000;
  b[5]=2400;
  b[6]=2900;
  b[7]=3200;
  b[8]=3600;
  b[9]=4000;
}
void draw() {
  background (0); 
  
  
  //TEXTO/BOTONES
  rect (150, 200, 120, 70);
  rect (350, 200, 120, 70);
  rect (200, 290, 200, 80 );
  fill(255);
  textSize (40);
  text ("JUEGO TECNO MULTIMEDIA", 50, 100);
  textSize (20);
  fill(0);
  text ("CREDITOS", 160, 240);
  text ("Instrucciones", 353, 240);
  textSize (40);
  text ("START", 250, 340);
  fill(#07EAF0);
  println(p);
  
  
  // VELOCIDAD/DIFICULTAD
  if (p==500) {
    frameRate(90);
  }
  if (p==1500) {
    frameRate(120);
  }
  if (p==3000) {
    frameRate(180);
  }
  if (p==4500) {
    frameRate(240);
  }
  if (p==5000) {
    frameRate(300);
  }if (p==7000) {
    frameRate(350);
  }if (p==8000) {
    frameRate(400);
  }
   creditos();
  jugar();
  instrucciones();
  perdiste();
}
void keyPressed() {
  if (key== 'r') {
    botones=3;
    p=1;
  }
  if (key =='a' ) {
    botones=0;
  }
}

void mouseClicked() {
  // BOTON IZQUIRDA
  if (botones ==0 && mouseX>150 && mouseX<270 && mouseY>200 && mouseY<200+70) {
    botones=1;
  }

  //BOTON DERECHA
  if (botones ==0 && mouseX>350 && mouseX<470 && mouseY>200 && mouseY<210+70) {
    botones=2;
  }
  //BOTON GRANDE
  if (botones ==0 && mouseX>200 && mouseX<400 && mouseY>290 && mouseY<370) {
    botones=3;
  } 
  //CONDICION PARA SALTAR
  if (salto==1 && VPelota==0) {
    VPelota = -4;
  }
}
