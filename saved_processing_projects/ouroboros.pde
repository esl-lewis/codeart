// coily snake that eats own tail
// ouroboros
// for rgb picking https://imagecolorpicker.com/en


// for making videos https://www.youtube.com/watch?v=WH31daSj4nc&list=PLRqwX-V7Uu6bw0bVn4M63p8TMJf3OhGy8

// can import libraries from https://processing.org/reference/libraries/ 
Circle[] circles;
int numCircles = 1;
int currentCircle = 0;

color pale = color(235, 218, 180);
color dark = color(41,41,36);
color lightblue = color(171,219,227); 
color darkblue = color(21,76,121); 
color midblue = color(30,129,176); 
color whiteish = color(251, 234, 201);

boolean running = true;

float x;
float y;
int big_circle_radius = 480;
int big_circle_x = 320;
int big_circle_y = 320;

int rand_radius = 3;

// start position of little circle
int xpos = 640;
int ypos = 640;


void setup() {
    size(640, 640);
    background(whiteish); // set background color
    stroke(lightblue); // sets the stroke color
    fill(darkblue);
    //x = 320;
    //y = 600;
    //arc(35, 35, 50, 50, 0, PI / 2.0);
    
    circles = new Circle[numCircles];
    for (int i = 0; i < circles.length; i++) {
        circles[i] = new Circle();
        // start circles at different point in loop
        circles[i].start(i);
    }
}




void draw() {
    //int []dels;
    //x = x + random(-range,range);
    for (int i = 0; i < circles.length; i++) {
        // start circles at different point in loop
        // circles[i].start(x, y));
        circles[i].move();
        circles[i].display();
    }; 
    
    //x = x - 1;
    //y = y - 2;
    // ellipse(mouseX, mouseY, 30, 30);
    //ellipse(x,y, 30, 30);
}
/*
void mousePressed() {
circles[currentCircle].start(mouseX, mouseY);
currentCircle++;
if (currentCircle >= numCircles) {
currentCircle = 0;
    }
}
*/

class Circle 
{
    color c;
    float x;
    float y;
    // float xspeed;
    // float yspeed;
    float radius;
    boolean on = false;
    
    void start(int iterate) {
        float i_small = iterate / 1000;
        //y = 220 + 20 * iterate;
        // (x-320)^2 + (y-320)^ = 100^2
        //y = ypos; 
        // x= xpos;
        //x = 320 - sqrt( -sq(x) + 640 * y - 92400) + 320;
        
        x = (int)(big_circle_x + big_circle_radius * cos(i_small));
        y = (int)(big_circle_y + big_circle_radius * sin(i_small));
        
        
        radius = 50;
        on = true;
    }
    
    
    
    void display() {
        if (on == true) {
            stroke(pale);
            strokeWeight(1);
            fill(dark);
            ellipse(x,y,radius,radius);
        }
    }
    
    void move() {if (on == true) {
            float t = millis() / 1000.0f; 
            //x = x + 1;  
            //y = 320 - sqrt( -sq(x) + 640 * x - 92400) + 320;
            x = (int)(big_circle_x + big_circle_radius * cos(t));
            y = (int)(big_circle_y + big_circle_radius * sin(t));
            //big_circle_radius = int(big_circle_radius - random(0.1 * rand_radius,rand_radius));
            if (big_circle_radius < 5) {
                big_circle_radius = 480;
            } else {
                big_circle_radius = big_circle_radius - 1;
            }
            
            
            /* 
            x = x + random( -x_jump_range, x_jump_range);
            y = y - random( -0.1 * y_jump_range, y_jump_range);
            //radius= radius - 0.9;
            // limitfor radius
            if (radius < 2) {
            radius = 2;
        } else {
            radius = radius - random( -0.3 * rad_range, rad_range);
        }
            
            if (xpos > width) {
            xpos= 0;
        }
            if (ypos > width) {
            ypos= 0;
        }
            if (radius <= 10) {
            radius = 10;
        } else {
            radius = radius - 0.05;
        }
            */
        }
        
    }
}
