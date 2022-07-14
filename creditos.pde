
void creditos() {
  if (botones==1) {

    background(0);
    py--;
    py1--;
    textSize(50);
    text("CREDITOS", px, py);
    textSize (20);
    fill(255);
    text ("Juego basado en Dinosaur Game\n Tecnologia multimedial 1\n Hecho por: Bruno Orosco\n Legajo: (85231/8)\n Profesor: Leonardo Garay\n Comision: 4", px1, py1);
    fill(255, 0, 0);
    text("VOLVER >> ´´a´´", 5, 17);
    if (py<-250) {
      py=400;
      py1=450;
    }
  }
}
