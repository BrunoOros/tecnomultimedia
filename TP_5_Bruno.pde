Aventura aventura;
void setup(){
size (800,600);
aventura = new Aventura();
}

void draw(){
//objeto.metodo();
aventura.dibujar();

}

void keyPressed(){
aventura.teclas();
}
