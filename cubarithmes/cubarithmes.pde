/*
 * Génération de cubarithmes pour le projet TaBGO
 *
 * (c) Ph. Truillet
 * Last Revision: 20/06/2024
 */ 
 
enum FSM {ZERO, UN, DEUX, TROIS, QUATRE, CINQ, SIX, SEPT, HUIT, NEUF, ERROR};

FSM mae=FSM.ERROR; 

void setup() {
  size(120,120);
  surface.setTitle("cubarithm generator");
  surface.setLocation(50,50);
  PImage sketch_icon = loadImage("ZERO.png");
  surface.setIcon(sketch_icon);  
  smooth();
}

void draw(){
  // dessin
  noStroke();
  background(255);
  fill(0);
  square(10,10,100);
  fill(50,15,190); // coins bleus
  triangle(10,10, 30,10, 10,30);
  triangle(90,10, 110,10, 110,30);
  triangle(110,90, 110,110, 90,110);
  triangle(10,90, 10,110, 30,110);
  // ronds
  stroke(255);
  /*
  noFill();
  circle(50,35,15); // 1
  circle(50,60,15); // 2
  circle(50,85,15); // 3
  circle(75,35,15); // 4
  circle(75,60,15); // 5
  circle(75,85,15); // 6 
  */
  switch(mae){
    case ZERO: // 3,4,5,6
      fill(255);
      // circle(50,35,15); // 1
      // circle(50,60,15); // 2
      circle(50,85,15); // 3
      circle(75,35,15); // 4
      circle(75,60,15); // 5
      circle(75,85,15); // 6 
      break;
      
    case UN: // 1,6
      fill(255);
      circle(50,35,15); // 1
      // circle(50,60,15); // 2
      //circle(50,85,15); // 3
      //circle(75,35,15); // 4
      //circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break;
      
    case DEUX: // 1,2,6
      fill(255);
      circle(50,35,15); // 1
      circle(50,60,15); // 2
      // circle(50,85,15); // 3
      // circle(75,35,15); // 4
      //circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break;  
      
    case TROIS: // 1,4,6
      fill(255);
      circle(50,35,15); // 1
      // circle(50,60,15); // 2
      //circle(50,85,15); // 3
      circle(75,35,15); // 4
      //circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break; 
      
    case QUATRE: // 1,4,5,6
      fill(255);
      circle(50,35,15); // 1
      // circle(50,60,15); // 2
      //circle(50,85,15); // 3
      circle(75,35,15); // 4
      circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break; 
      
    case CINQ: // 1,5,6
      fill(255);
      circle(50,35,15); // 1
      // circle(50,60,15); // 2
      // circle(50,85,15); // 3
      // circle(75,35,15); // 4
      circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break; 
      
    case SIX: // 1,2,4,6
      fill(255);
      circle(50,35,15); // 1
      circle(50,60,15); // 2
      // circle(50,85,15); // 3
      circle(75,35,15); // 4
      // circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break; 
      
    case SEPT: // 1,2,4,5,6
      fill(255);
      circle(50,35,15); // 1
      circle(50,60,15); // 2
      // circle(50,85,15); // 3
      circle(75,35,15); // 4
      circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break; 
      
    case HUIT: // 1,2,5,6
      fill(255);
      circle(50,35,15); // 1
      circle(50,60,15); // 2
      // circle(50,85,15); // 3
      // circle(75,35,15); // 4
      circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break; 
      
    case NEUF: // 2,4,6
      fill(255);
      // circle(50,35,15); // 1
      circle(50,60,15); // 2
      // circle(50,85,15); // 3
      circle(75,35,15); // 4
      // circle(75,60,15); // 5
      circle(75,85,15); // 6       
      break;       
    default:
      break;
  }
  save("./data/" + mae.toString()+".png");
}

void keyPressed(){
  switch(key){
    case '0': 
      mae=FSM.ZERO;
      break;
    case '1': 
      mae=FSM.UN;
      break;
    case '2': 
      mae=FSM.DEUX;
      break;
    case '3': 
      mae=FSM.TROIS;
      break;
    case '4': 
      mae=FSM.QUATRE;
      break;
    case '5': 
      mae=FSM.CINQ;
      break;
    case '6': 
      mae=FSM.SIX;
      break;
    case '7': 
      mae=FSM.SEPT;
      break;
    case '8': 
      mae=FSM.HUIT;   
      break;     
    case '9': 
      mae=FSM.NEUF;
      break;     
    default:
      mae=FSM.ERROR;
      break;
  }
}
