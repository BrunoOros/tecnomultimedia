//Bruno Nicolas Orosco (85231/8)
//https://youtu.be/13lzcszNpNQ
//




let estado = "menu";
let enemigos = [];
let numEnemigos = 10;
let enemigoAncho = 40;
let enemigoAlto = 40;
let velocidad = 2;

let personajeX;
let personajeY;

let balas= [];

let estadoGanaste = false;
let contador = numEnemigos;

function setup() {
  createCanvas(windowWidth, windowHeight);
  crearEnemigos(); // Llama a la función para crear enemigos
  personajeX = width /2;
  personajeY = height-50;
  noCursor()
}

function draw() {

  pantallas();
}

function keyPressed() {
  // Manejo de teclas para cambiar de estado
  if (estado === "menu" && key == 'i' || key == 'I' ) {
    estado = "instrucciones";
  } else if (estado == "instrucciones" && key == 'p' || key == 'P') {
    estado = "juego";
  } else if (estado == "juego" && key == 'c' || key == 'C') {
    estado = "creditos";
  } else if (estado == "juego" && key == ' ') {
    disparar();
  } else if (estado == "creditos" && key == 'r' || key == 'R') {
    reiniciarJuego();
  } else if (estado == "perdiste" && key == 'r' || key == 'R') {
    reiniciarJuego();
  }
}

function pantallas() {
  // Comprobar el estado actual del juego
  if (estado === "menu") {
    // Pantalla de menú
    push();
    background(0);
    fill(255, 255, 255);
    stroke (50, 150, 50);
    strokeWeight(8);
    textSize(62);
    textAlign(CENTER, CENTER);
    text("¡Bienvenido al Juego!", width / 2, height / 2 - 50);
    textSize(34);
    text("Presiona 'I' para ver las instrucciones", width / 2, height / 2 + 50);
    pop ();
  } else if (estado === "instrucciones") {
    
    push();
    background(0);
    fill(255, 255, 255);
    stroke (50, 150, 50);
    strokeWeight(8);
    textSize(52);
    textAlign(CENTER, CENTER);
    text("Instrucciones:Disparar precionando ´SPACE´\n para eliminar enemigos los enemigos antes que te invadan!", width / 2, height / 2 - 150);
    text("Mueve tu nave con ´LEFT´ Y ´RIGHT´", width / 2, height / 2 -50);
    textSize(34);
    text("Presiona 'P' para comenzar el juego.", width / 2, height / 2 + 150);
    pop();
  } else if (estado === "juego") {
    
    push()
      background(0);
    moverEnemigos();
    dibujarEnemigos();
    dibujarPersonaje();
    moverPersonaje();
    dispararBala();
    verificarColisiones();
    //contador
    fill(255);
    stroke (50, 150, 50);
    strokeWeight(8);
    textSize(24);
    textAlign(RIGHT);
    text("Enemigos restantes: " + contador, width - 10, 30);
    pop()
      if (estadoGanaste) {
      push();
      background(0);
      fill(255, 255, 255);
      stroke (50, 150, 50);
      strokeWeight(8);
      textSize(62);
      textAlign(CENTER, CENTER);
      text("¡Ganaste!", width / 2, height / 2 - 50);
      textSize(34);
      text("Presiona 'c' para ver creditos", width / 2, height / 2 + 100);



      pop();
    }

    
  } else if (estado == "creditos") {
    
    push();
    background(0);
    fill(255, 255, 255);
    stroke (50, 150, 50);
    strokeWeight(8);
    textSize(62);
    textAlign(CENTER, CENTER);
    text("Créditos:", width / 2, height / 2 - 250);
    textSize(34);
    text("Desarrollado por Bruno Orosco", width / 2, height / 2 - 180);
    text("Tecnologia Multimedial 1", width / 2, height / 2  - 140);
    text("Profesor Tobias Albirosa", width / 2, height / 2 - 100);
    text("Comision: 5", width / 2, height / 2 - 50);
    text("Presiona 'R' para reiniciar.", width / 2, height / 2 + 100);
    pop();
  } else if (estado == "perdiste") {
    push();
    background(0);
    fill(255, 255, 255);
    stroke (150, 50, 50);
    strokeWeight(8);
    textSize(62);
    textAlign(CENTER, CENTER);
    text("¡Perdiste!", width / 2, height / 2 - 50);
    textSize(50)
      text("invadieron tu zona", width / 2, height / 2 + 40);
    textSize(34);
    text("Presiona 'R' para reiniciar.", width / 2, height / 2 + 100);
    pop();
  }
}


function windowResized() {

  resizeCanvas(windowWidth, windowHeight);
}




function crearEnemigos() {
  for (let i = 0; i < numEnemigos; i++) {
    let x = random(width - enemigoAncho); 
    let y = random(-500, -50); 
    enemigos.push( {x, y, eliminado:false}); // Agrega el enemigo al array
  }
}


function moverEnemigos() {
  for (let i = 0; i < enemigos.length; i++) {
    if (!enemigos[i].eliminado) { // Solo mover enemigos no eliminados
      if (enemigos[i].y < height + enemigoAlto) {
        enemigos[i].y += velocidad;
      }
      if (enemigos[i].y > height + 20) {
        estado = "perdiste";
      }
    }
  }
}



function dibujarEnemigos() {
  fill(255, 0, 0);
  for (let i = 0; i < enemigos.length; i++) {
    if (!enemigos[i].eliminado) {
      rect(enemigos[i].x, enemigos[i].y, enemigoAncho, enemigoAlto);
    }
  }
}


function dibujarPersonaje() {
  fill(0, 0, 255);
  rect(personajeX, personajeY, 40, 40);
}


function moverPersonaje() {
  if (keyIsDown(LEFT_ARROW) && personajeX > 0) {
    personajeX -= 7; // Mueve hacia la izquierda
  }
  if (keyIsDown(RIGHT_ARROW) && personajeX < width - 40) {
    personajeX += 7; // Mueve hacia la derecha
  }
}


function disparar() {
  balas.push ( {x:personajeX +20, y:personajeY});
}


function dispararBala() {
  for (let i = 0; i< balas.length; i++) {
    fill(255);
    rect(balas[i].x, balas[i].y, 5, 15);
    balas[i].y -=10;
  }
}

function verificarColisiones() {
  for (let i = balas.length - 1; i >= 0; i--) {
    for (let j = enemigos.length - 1; j >= 0; j--) {
      if (balas[i] && enemigos[j]) {  // Comprobación de existencia
        if (
          balas[i].x < enemigos[j].x + enemigoAncho &&
          balas[i].x + 5 > enemigos[j].x &&
          balas[i].y < enemigos[j].y + enemigoAlto &&
          balas[i].y + 15 > enemigos[j].y
          ) {
          balas.splice(i, 1);
          enemigos[j].eliminado = true;
          contador--
        }
      }
    }
  }

  if (enemigos.every(enemigo => enemigo.eliminado)) {
    estadoGanaste = true;
  }
}



function reiniciarJuego() {
  enemigos = [];
  crearEnemigos();
  estado = "menu"
  estadoGanaste = false;
  contador= numEnemigos;
  personajeX = width /2;
  personajeY = height-50;
}
