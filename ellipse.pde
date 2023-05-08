import processing.serial.*;
Serial myPort;  // Create object from Serial class

String val;      
int x; //joystick x-coordinate
int y; //joystick y-coordinate
int b; // button

void setup() {
  size(700, 700);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil(10);
  
}

void draw() {

  background(229, 255, 204);
  
  if (val != null){
    String vals[] = split(val, ',');
     x = int(vals[0]);
     y = int(vals[1]);
     b = int(vals[2]);
     
     ellipse(x/6, 500-(y/8), 100, 100);
     fill(255, 204, 229);
     
     print(b);
     if (b == 1) {
       background(204, 229, 255);
     }
  }
}

void serialEvent (Serial myPort){
  
  try {
    val = myPort.readString();
  } 
  
  catch(RuntimeException e) {
    e.printStackTrace();
  }
}
