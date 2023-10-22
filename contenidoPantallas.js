class contenidoPantallas{

constructor(){
  this.img= 23;
  this.imagenes = [];
  this.flujo= null;
  this.libro = null;
  
  
  
    for (let i = 0; i <= 22; i++) {
      let pos = i + 1;
      this.imagenes[i] = loadImage("pantalla" + pos + ".png");
    }
    this.flujo = loadImage("flujo.png");
    this.libro = loadImage("libro.jpg");
  }


contenidoPantalla1(){
 background(55);
  textSize(30);
  image(libro, 400, 280, 200, 330);
  
  text("Autor:BRIGHTFIELD RICHARD\nAlumno:Bruno Orosco\nLegajo:85231/8\nTecno Multimedial 1\nInstrucciones:Avanzar presionando\n click sonbre el boton rojo\npara avanzar. En el caso de\n que haya mas de una opcion\n clickear sobre la deseada", 10, 75);
  }
contenidoPantalla2(){
  background(255,0,0);
  image(flujo, 0, 0, 600, 600);
}
contenidoPantalla3(){
textSize(22);
  image(imagenes[0], 0, 0, 600, 600);
  fill(0, 0, 0, 140);
  rect(0, 0, 600, height/2-20);
  fill(255);
  text("Eres miembro de AES, vuelves de una misión\n en el Extremo Oriente y recibes una llamada urgente\n de tu jefe, T. Te diriges a Washington en tu\n avioneta. Al llegar, te recoge una limusina y T\n te informa de un asunto que no puede esperar,\n interrumpiendo tus vacaciones merecidas.", 50, 50);
}
contenidoPantalla4(){
textSize(22);
  image(imagenes[1], 0, 0, 600, 600);
  fill(0, 0, 0, 140);
  rect(0, 0, 600, height/2+40);
  fill(255);

  text("El vehículo os lleva a un edificio de oficinas\n en Washington. Un guardia os recibe y\n os dirige a un ascensor que os lleva a una plataforma\n subterránea. Allí, subís a un vehículo en forma\n de bala que os lleva a un puesto de mando especial.\n En la sala sin ventanas, T te muestra un mapamundi\n con luces correspondientes a la búsqueda de Dimitrius.\n Preguntas por qué se ha desplegado una operación tan\n grande y T te aclara que es un hombre muy importante.", 50, 50);
  }
contenidoPantalla5(){
textSize(22);
  image(imagenes[2], 0, 0, 600, 600);
  fill(0, 0, 0, 140);
  rect(0, 0, 600, height/2+5);
  fill(255);
  text ("T, es peligroso y debes buscar a Dimitrius.\n Formaba parte de un proyecto entre el Centro\n de Investigaciones Psíquicas de Moscú y el\n Laboratorio de Física Molecular de Noginsk.\n No es un espía soviético, los rusos también\n están preocupados. Dimitrius puede estallar como\n una bomba atómica y se cree que puede\n viajar en el tiempo.", 50, 50);
  }
contenidoPantalla6(){
textSize(22);
  image(imagenes[3], 0, 0, 600, 600);
  fill(0, 0, 0, 140);
  rect(0, 0, 600, height/2-30);
  fill(255);
  text ("T muestra fotos de Dimitrius, un hombre bajo\n y delgado. Observas el mapa donde cada agente\n marca su posición. Nadie ha encontrado a\n Dimitrius en persona aún. Te piden que\n asumas una identidad falsa, sugiriendo un\n coleccionista de arte o un jugador profesional.", 50, 50);
  }
contenidoPantalla7(){}
contenidoPantalla8(){}
contenidoPantalla9(){}
contenidoPantalla10(){}



}
