// https://www.reddit.com/r/processing/comments/h9idw1/arbre_de_loc%C3%A8an_processing/
// ocean tree
// for rgb picking https://imagecolorpicker.com/en

// play with y, x speed, radius intial and radius change

// can import libraries from https://processing.org/reference/libraries/ 
Circle[] circles;
int numCircles = 20;
int currentCircle = 0;
int range = 5;

//int i = 0;

color pale = color(235, 218, 180);
color dark = color(41,41,36);
color lightblue = color(171,219,227); 
color darkblue = color(21,76,121); 
color midblue = color(30,129,176); 

boolean running = true;

float x;
float y;
//float z;

void setup() {
  size(640, 640);
  background(pale); // set background color
  stroke(lightblue); // sets the stroke color
  //fill(darkblue);
  x = 320;
  y = 640;
  circles = new Circle[numCircles];
  for (int i=0; i < circles.length; i++) {
        circles[i] = new Circle();
      }
}

void draw() {
      //int [] dels;
      //x = x + random(-range,range);
      for (int i=0; i < circles.length; i++) {
        circles[i].brownian();
        circles[i].display();
      }; 

      //x = x - 1;
      //y = y - 2;
      // ellipse(mouseX, mouseY, 30, 30);
      //ellipse(x, y, 30, 30);
    }

void mousePressed() {
  circles[currentCircle].start(mouseX, mouseY);
  currentCircle++;
  if (currentCircle >= numCircles) {
    currentCircle = 0;
  }
}

class Circle 
{
  color c;
  float x;
  float y;
  //float xspeed;
  //float yspeed;
  float radius;
  boolean on = false;
 

  void start(float xpos, float ypos) {
    x = xpos;
    y = ypos; 

    radius = 100;
    on = true;
  }

  void display() {
    if (on == true){
    stroke(255);
    fill(darkblue);
    ellipse(x,y,radius,radius);
  }
  }

  void brownian() {if (on == true){
    x = x + random(-range, range);
    y = y - 4;
    radius = radius -1;
    /*
    if (xpos > width) {
      xpos = 0;
    }
    if (ypos > width) {
      ypos = 0;
    }
    if (radius <= 10) {
      radius = 10;
    } else {
      radius = radius - 0.05;
    }*/
  }
  }
}