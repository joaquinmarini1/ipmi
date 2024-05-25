//Marini Joaquín Comision 1

//Esto es de la Libreria para poder poner música, la lib se llama Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage fondo, imagen1, imagen2, imagen3, imagen4;
PFont fuente;
String Targaryen;
int pantalla = 0, tiempo, diametro, py;

import ddf.minim.*;
Minim cancion;
AudioPlayer player;

void setup() {
  size(640, 480);
  //Esto de abajo también es por la música
  cancion = new Minim(this);
  player = cancion.loadFile("intro.wav");
  player.play();
  
  fondo = loadImage("fondo.jpg");
  fuente = createFont("GloryThrone.ttf", 65);
  textFont(fuente);
  textSize(30);
  
  py = height;
  Targaryen = "La casa Targaryen es una de las más antiguas de Valirya, sus miembros más importantes fueron Daenerys, Rhaenyra, Daemon y Aegon. Su Lema es Fire and Blood";
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("final.png");
  diametro = width/8;

}
void draw() {
  if (pantalla == 0) {
    image(fondo, 0, 0, width, height);

    push();
    rect(92, 334, 450, 30);
    fill(0);
    text(" Juego de tronos es una serie de tv adaptada de una saga de libros", 110, 358);
    pop();
  }
  if (pantalla == 1) {
    background (255);
    image(imagen1, 0, 50, width, height);
    fill(130, mouseY);
    text("La casa stark es una de las principales de la serie, siendo su territorio Winterfell, y sus miembros \n más famosos son Arya, John, Sansa, Bran y Rob. Su Lema es Winter is Coming. ", 10, 30); 
  }
  if (pantalla == 2) {
    background (160,0,0,255);
    push();
    image(imagen2, 0, 50, width, height);
    fill(255,159,0);
    text("La casa Lannister es otra casa famosa, además de la antagonista principal de la serie, siendo sus \n miembros más reconocidos Tywin, Cersei, Tyrion y Jaime. Su Lema es Hear me Roar.", mouseX, mouseY);
    pop();
  }
  if (pantalla == 3) {
    background (0);
    push();
    image(imagen3, 0, 50, width, height);
    float tono= map(py,height,250, 255, 250);
    textAlign(CENTER);
    fill(217,173,23,tono);
    pop();
    text(Targaryen, 100, py, 440, 1200);
    py-=2;
  } 
       
    if (pantalla == 4) {
    push();
    background(0);
    image(imagen4, 0, 0, width, height);
    fill(0);
    pop();
    
    push();
    rect(10, 10, 110, 30);
    fill(0);
    text("Gracias por ver", 20, 35);
    pop();
    
    push();
    fill(255);
    circle(530,410, diametro);
    fill(0);
    textSize(30);
    textAlign(CENTER, CENTER);

    text("Reiniciar", 530,410);
    pop();
  }
  tiempo++;
  if (tiempo >= 255) {
    tiempo = 0;
    if (pantalla != 4) {
      pantalla++;
    }
  }
}
void mouseClicked() {
  if (pantalla > 4) {
    pantalla = 0;
  }
    if (dist(mouseX, mouseY, 530, 410) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }

  }
