class cambioPantalla{

constructor(){
this.pantalla = 0;
this.contenidopantallas = new contenidoPantallas();
this.boton = new Boton();

}


 dibujarPantallas() {
    if (this.pantalla == 0) {
      background(255);
      textSize(50);
      text("Sombra Mortal\n Aventura Grafica", 130, 180);
      textSize(20);

      text("Creditos/\nInstrucciones", 160, 420);
      text("Flujo", 280, 420);
      text("Iniciar", 380, 420);

      this.boton.dibujarBoton("circular", width / 2 - 100, height / 2 + 50, 80, 1);
      this.boton.dibujarBoton("circular", width / 2, height / 2 + 50, 80, 2);
      this.boton.dibujarBoton("circular", width / 2 + 100, height / 2 + 50, 80, 3);
    } else if (this.pantalla == 1) {
      this.contenidopantallas.contenidoPantalla1();
      text("Inicio", 45, 25);
      this.boton.dibujarBoton("circular", 20, 120, 40, 0);
    } else if (this.pantalla == 2) {
      this.contenidoPantalla2();
      text("Inicio", 45, 25);
      this.boton.dibujarBoton("circular", 20, 20, 40, 0);
    } else if (this.pantalla == 3) {
      this.contenidopantallas.contenidoPantalla3();
      fill(150, 0, 0);
      this.boton.dibujarBoton("circular", 550, 550, 50, 4);
    } else if (this.pantalla == 4) {
      this.contenidoPantalla4();
      this.boton.dibujarBoton("circular", 550, 550, 50, 5);
    }

}
}
