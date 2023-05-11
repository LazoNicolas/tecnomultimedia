String estado = "inicio";
PImage imagen1;
PImage imagen2;
PImage imagen3;
PFont Mifuente;
int cuentaFotograma = 0;
String parrafo1= "Un submarino es un buque capaz de navegar bajo \n el agua. El principio de funcionamiento se basa en la búsqueda \n de un equilibrio entre el peso del buque que tiende a hacerlo \n hundir y el empuje hidrostático que tiende a hacerlo flotar";
String parrafo2= "en los monitores muestran el trabajo de \n video musical de Paik Global Gloove,una mezcla \n colorida densa de imagenes de vanguardia,pop, y comerciales.";

void setup(){
 // tamaño pantalla
  size(640,480);
 // variables
 Mifuente= loadFont ("Garamond-48.vlw");
  imagen1= loadImage ("imagen1.jpg");
  imagen2= loadImage ("imagen2.jpg");
  imagen3= loadImage ("imagen3.jpg");
  
}

void draw(){
 // fondo
  background(8,122,196);
  textFont(Mifuente);
 
  if(estado.equals("inicio") ) {
 //pantalla de inicio:
 
  fill(0);
  textAlign(CENTER);
  textSize(40);
  text("click para empezar",width/2,height/2); 
  fill(4,63,178);
  ellipse(width/2,300,50,50);

  
} else if(estado.equals("pantalla 1") ) {   
    
 //pantalla 1:
 image(imagen1,0,0,640,480);
  fill(0);
  textAlign(CENTER);
  textSize(40);
  text("Submarino",width/2,cuentaFotograma);
  textSize(30);
  text("Cornelis Jacobszoon Drebbel",width/2,cuentaFotograma+20); 
  textSize(30);
  text("Fecha de creación: 1620 - 1624",width/2,cuentaFotograma+40);
  
  //incremento de contador:
  cuentaFotograma++;
  
  if(cuentaFotograma>= 500) {
    estado = "pantalla 2";
    cuentaFotograma = 0;
  }
} else if(estado.equals("pantalla 2") ) {
    
 //pantalla 2:
 image(imagen2,0,0,640,480);
  fill(0);
  textAlign(CENTER);
  textSize(25);
  fill(0,map(cuentaFotograma,0,130,0,380) );
  text(parrafo1,width/2,height/2+30);
  
  //incremento de contador:
  cuentaFotograma++;
  
  if(cuentaFotograma>= 500) {
    estado = "pantalla 3";
     cuentaFotograma = 0;
  } 
} else if(estado.equals("pantalla 3") ) {
  
  //pantalla 3
  image(imagen3,0,0,640,480);
  fill(255);
  textAlign(CENTER);
  textSize(30);
  text(parrafo2,cuentaFotograma+40,height/2+30);
  ellipse (width/2,400,50,50);
  
  //incremento de contador:
  cuentaFotograma++;
  
  if(cuentaFotograma>= 900) {
  }  
 }
}

void mousePressed(){
  if(estado.equals("inicio") ) {
    if(dist(mouseX,mouseY,width/2,300)< 25) {
      
    estado = "pantalla 1";
    cuentaFotograma = 0;
    }
  } else if(estado.equals("pantalla 1") ) {
  estado = "pantalla 2";
  cuentaFotograma = 0;
  } else if(estado.equals("pantalla 2") ) {
  estado = "pantalla 3";
  cuentaFotograma = 0;
  } else if(estado.equals("pantalla 3") ) {
    if(dist(mouseX,mouseY,width/2,400) < 25) {
   estado = "inicio";
    }
  }
}
