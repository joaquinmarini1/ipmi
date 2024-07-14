//Marini Joaquin Comisión 1
//Enlace al video del recuperatorio https://youtu.be/nY7ZSu2jspE

int filas = 3, columnas = 6, ancho, alto;
PImage obra;
color azuloscuro = color(6, 13, 29);
color azul = color(39, 41, 186);
  
void setup() {
  size(800, 400);
  ancho = width/columnas;
  alto = height/filas;
  obra = loadImage("obra.jpg");
  
}

void draw() {
  background(azuloscuro);
  image(obra, 0, 0);
  translate(width / 2, 0); 
  for (int j=0; j<columnas; j++) {
    for (int i=0; i<filas; i++) {
      float distan = dist(i*ancho, j*alto, mouseX, mouseY);
      float tono = map(distan, 255, width, 255, 0);
      if ((i+j)%2==0) {
        fill(azul);
        rect(i*ancho, j*alto, ancho, alto);
        fill(azuloscuro);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);
        } else {
      fill(azul, tono);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);

      }
    }
  }
 }  
 
 color TraerColor(int columnas, int filas) {
   color azuloscuro = color(6, 13, 29);
   color azul = color(39, 41, 186);
   if ((columnas + filas) % 2 == 0) {
     return azul;
   } else {
     return azuloscuro;
   }
 }
   
 
void mouseClicked(){
 aumentarConClick();
}
