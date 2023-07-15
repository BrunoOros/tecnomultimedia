void dibujarBoton(String forma, float x, float y, float tam, int siguiente) {
  if (forma== "circular") {
    pushStyle();
    circle (x, y, tam);

    //text("Creditos",x-20,y+50);
    if (mousePressed && on) {
      if (dist(mouseX, mouseY, x, y)<tam/2) {
        pantalla = siguiente;
        on = false;
        popStyle();
      }
    }
  }
}
