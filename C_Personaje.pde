class Personaje{
float x, y, radio;
PImage FotoSubmarino;

//constructor
Personaje (){
x = width/2;
y = height/2;
//tamaño submarino
radio =70;
FotoSubmarino = loadImage ("submarino.png");
}

//metodos
void dibujar (){
image (FotoSubmarino,x,y,radio,radio);
}


void mover(){
x = mouseX;
y = mouseY;
}



}
