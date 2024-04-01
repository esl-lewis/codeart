// Example: Two Car objects
Car myCar1;
Car myCar2; // Two objects!

int num = 2000;
int range = 3;

color pale = color(251, 234, 201);
color dark = color(30);


float[] ax = new float[num];
float[] ay = new float[num]; 

//float[] ax = new Car[num];
//float[] ay = new Car[num]; 

void setup() {
  size(640,640);
  // Parameters go inside the parentheses when the object is constructed.
  for(int i = 0; i < num; i++) {
    ax[i] = width/2;
    ay[i] = height/2;
  }
  myCar1 = new Car(color(255,0,0),320,600,2,1,50); 
  myCar2 = new Car(dark,320,610,1,1,50);
}

void draw() {
  background(pale);
  // Shift all elements 1 place to the left
  for(int i = 1; i < num; i++) {
    ax[i-1] = ax[i];
    ay[i-1] = ay[i];
  }
  
  myCar1.brownian();
  myCar1.display();
  myCar2.brownian();
  myCar2.display();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float radius;

  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed, float tempRadius) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    radius = tempRadius;
  }

  void display() {
    stroke(255);
    fill(c);
    ellipse(xpos,ypos,radius,radius);
  }

  void drive() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos > width) {
      xpos = 0;
    }
    if (ypos > width) {
      ypos = 0;
    }
  }

  void brownian() {
    xpos = xpos + random(-range, range);
    ypos = ypos - yspeed;

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
    }
  }

}