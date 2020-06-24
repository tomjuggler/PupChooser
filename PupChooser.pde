
import processing.serial.*;

Serial myPort; 
int val;
int x = 0;

PImage pups;
int chosen = 8;

void setup() 
{
  
  size(600, 336);
  //String portName = "COM1"; // FOR WINDOWS
  String portName = "/dev/ttyUSB0"; // FOR LINUX
  myPort = new Serial(this, portName, 9600);
  pups = loadImage("pups.jpg");
  pups.resize(600, 336);
  background(pups);  
  noFill();
  strokeWeight(2);
}

void draw()
{
  background(pups);
  //check mouse position for circles:
  //println("X: " + mouseX + " Y:" + mouseY);
  //if ( myPort.available() > 0) {  // If data is available,
  //  val = myPort.read();         // read it and store it in val
  //}
 switch(chosen){
   case 0: 
   
   break;
   case 1: 
    //rocky
    ellipse(123, 108, 100, 100);
   break;
   case 2:
   //Tracker
   ellipse(215, 76, 100, 100);
   break;
   case 3:
   //chase
   ellipse(283,115, 100, 100);
   break;
   case 4:
   //marshall
  ellipse(372, 148, 100, 100);
   break;
   case 5:
   //everest
   ellipse(503, 210, 100, 100);
   break;
   case 6: 
   //rubble:
   ellipse(222, 189, 100, 100);
   break;
   case 7:
   //zuma:
   ellipse(128, 294, 100, 100);
   break;
   case 8:
   //sky
   ellipse(303, 293, 100, 100);
   
   break;
 }
}

void keyPressed(){
  //random pup:
  if(key == 'a'){
    int rand = int(random(1, 8));
    println(rand);
    chosen = rand;
  String ch1 = str(rand);
  println(ch1);
  myPort.write(ch1);
  } else{
  myPort.write(key);
  chosen = key-48; //quick ascii to int conversion
  println(chosen);
  }
}


void mousePressed(){
  // int rand = int(random(1, 8));
  //  println(rand);
  //  chosen = rand;
  //String ch1 = str(rand);
  //println(ch1);
  //myPort.write(ch1);
}
