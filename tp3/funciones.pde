

void aumentarConClick(){
  if(mouseButton == RIGHT){
    cantidad++;
  }else if(mouseButton == LEFT){
    cantidad--;
  }
  ancho = width/cantidad;
  alto = height/6;
}

void cambiarConTecla(){
if(keyCode == RIGHT){
    pantalla = 1;
  }else if(keyCode == LEFT){
    pantalla = 2;
  }
}
