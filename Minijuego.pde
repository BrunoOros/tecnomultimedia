class Minijuego{
  Personaje submarino;
int  cantBallenas = 20;
Ballena[] ball;
int vida;
int tiempo;
PImage FondoJuego;


//constructor
Minijuego(){
  
FondoJuego = loadImage ("FondoJuego.jpg");
submarino = new Personaje();
ball = new Ballena[cantBallenas];

 for (int i = 0; i<cantBallenas; i++){
ball[i] = new Ballena( random(width), -random (100,800));
} 
}



void pantalla_juego(){
//  background(0);
image (FondoJuego,0,0, 800,600);
submarino.mover();
submarino.dibujar();

for (int i=0; i<cantBallenas;i++){
 ball[i].mover();
 ball[i].dibujar();
 }
}




}
