//Bruno Nicolas Orosco
//comision: 5
//legajo: 85231/8
//pd: Buenas profe el codigo es el mismo que plantee desde un principio con la diferencia
// que esta en (POO), cree una clase game donde principalmente se dan los cambios de pantalla,
//otra class enemigos donde esta relacionado todo lo que tenga que ver con los mismos
//y una class personaje donde esta todo lo del personaje.

//quise cambiar el nombre de esta pestaña, por tp5.js pero cuando lo hago y ejecuto el programa no se visualiza nada. no lo pude corregir!


let game
  function setup() {
  createCanvas(windowWidth, windowHeight);
  game = new Game();
}


function draw() {
  game.pantallas()
}

function keyPressed() {
  game.keyPressed();
}
