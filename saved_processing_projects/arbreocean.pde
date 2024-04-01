// https://www.reddit.com/r/processing/comments/h9idw1/arbre_de_loc%C3%A8an_processing/
// ocean tree
// for rgb picking https://imagecolorpicker.com/en


// can import libraries from https://processing.org/reference/libraries/ 
Circle[] circles;
int numCircles = 10;
int currentCircle = 0;
int x_jump_range = 5;
int y_jump_range = 10;
int rad_range = 2;

int x_pos_range = 320;
int y_pos_range = 640;


color pale = color(235, 218, 180);
color dark = color(41,41,36);
color lightblue = color(171,219,227); 
color darkblue = color(21,76,121); 
color midblue = color(30,129,176); 

boolean running = true;

float x;
float y;


void setup() {
    size(640, 640);
    background(pale); // set background color
    stroke(lightblue); // sets the stroke color
    fill(darkblue);
    x = 320;
    y = 600;
    circles = new Circle[numCircles];
    for (int i = 0; i < circles.length; i++) {
        circles[i] = new Circle();
        circles[i].start(random(x - 60,x + 60), random(y - 40,y + 40));
    }
}



void draw() {
    //int []dels;
    //x = x + random(-range,range);
    for (int i = 0; i < circles.length; i++) {
        circles[i].brownian();
        circles[i].display();
    }; 
    
    //x = x - 1;
    //y = y - 2;
    // ellipse(mouseX, mouseY, 30, 30);
    //ellipse(x,y, 30, 30);
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
    // float xspeed;
    // float yspeed;
    float radius;
    boolean on = false;
    
    
    void start(float xpos, float ypos) {
        x = xpos;
        y = ypos; 
        
        radius = 50;
        on = true;
    }
    
    void display() {
        if (on == true) {
            stroke(pale);
            strokeWeight(2);
            fill(dark);
            ellipse(x,y,radius,radius);
        }
    }
    
    void brownian() {if (on == true) {
            x = x + random( -x_jump_range, x_jump_range);
            y = y - random( -0.1 * y_jump_range, y_jump_range);
            //radius= radius - 0.9;
            // limitfor radius
            if (radius < 2) {
                radius = 2;
            } else {
                radius = radius - random( -0.3 * rad_range, rad_range);
            }
            /*
            if (xpos> width) {
            xpos =0;
        }
            if (ypos> width) {
            ypos =0;
        }
            if (radius <= 10) {
            radius= 10;
        } else {
            radius= radius - 0.05;
        }*/
        }
    }
}