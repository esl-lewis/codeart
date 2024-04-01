// thing that moves and sets a circle down, faster it moves and diff directions look like coiled snake
// other circles move as well so coil is also moving?

void setup() {
    stroke(255,128,0);
    size(480, 480);
}



void draw() {
    if (mousePressed) {
        fill(random(255), random(255), random(255));
    } else {
        fill(255);
    }
    ellipse(mouseX, mouseY, 80, 80);
    
}

