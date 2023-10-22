//Bruno Nicolas Orosco (85231/8)
//Buenas profe, entrego solo como para tener posibilidad de recuperatorio, la verdad es que encare el tp
//con poco tiempo y me dio muchos problemas a la hora de pasar mi aventura grafica a p5js, mi idea era
//agregar mi tp4 (juego space invaders) a la aventura. pero me dio muchos problemas poder generar el cambio de pantallas
//pero creo que lo voy a poder hacer con unos dias mas de tiempo, gracias!
//

let miApp 
let on = false;
function setup() {
createCanvas(windowWidth, windowHeight);
miApp = new cambioPantalla();
}


function draw() {
miApp.dibujarPantallas();
console.log (pantalla);

}

function mouseMoved() {
  on = true;
}
