//Marini Joaquin Comisión 1
//Enlace al video de YouTube https://www.youtube.com/watch?v=frC0W96plFA

int cantidad = 12, pantalla = 1, ancho, alto;
PImage obra;

void setup() {
  size(800, 400);
  ancho = width/cantidad;
  alto = height/6;
  obra = loadImage("obra.jpg");
  
}
//Esto de aca abajo es el ciclo for de la pantalla 1
void draw() {
  if(pantalla ==1){
  background(39, 41, 186);
  for (int j=0; j<cantidad; j++) {
    for (int i=0; i<cantidad; i++) {
      float distan = dist(i*ancho, j*alto, mouseX, mouseY);
      float tono = map(distan, 0, width, 0, 255);
      if ((i+j)%2==0) {
        fill(6, 13, 29);
        rect(i*ancho, j*alto, ancho, alto);
        fill(39, 41, 186);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);
        } else {
      fill(6, 13, 29, tono);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);
    image(obra, 0, 0);

      }
    }
  }
 }  
 //Esto de aca abajo es el ciclo for de la pantalla 2

   else if(pantalla ==2){
  background(6, 13, 29);
  for (int j=0; j<cantidad; j++) {
    for (int i=0; i<cantidad; i++) {
      float distan = dist(i*ancho, j*alto, mouseX, mouseY);
      float tono = map(distan, 0, width, 0, 255);
      if ((i+j)%2==0) {
        fill(39, 41, 186);
        rect(i*ancho, j*alto, ancho, alto);
        fill(6, 13, 29);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);
        } else {
      fill(39, 41, 186, tono);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);
    image(obra, 0, 0);

      }
    }
  }
 }  
}
//Con click izquierdo y derecho aumenta y disminuye la cantidad de figuras respectivamente.
void mouseClicked(){
 aumentarConClick();
}
//Con las teclas de flecha izquierda y derecha podemos intercambiar los colores de las figuras respectivamente.
void keyPressed(){
  cambiarConTecla();
}
