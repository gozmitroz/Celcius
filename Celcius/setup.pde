void settings() {
  size(1920, 1080);
}


void setup() {
  
  
  // Load images
  background = loadImage("backgroundgradient.png");
  cloud = loadImage("cloud.png");
  ground = loadImage("platformice.png");
  ground2 = loadImage("platformice2.png");
  
  
  // Snow setup code
  noStroke();
  smooth();
  frameRate(60);
  for(int i = 0; i < quantity; i++) {
  snow[i] = new Snow(round(random(minFlakeSize, maxFlakeSize)), minFlakeSize, maxFlakeSize, round(random(0, 1)), random(0, width), random(0, height)); 
  }


// Platform and cloud initial variable values (speed, length, etc.)
groundX = 900;
groundY = 550;
ground2X = 900 + 600 + 200;
ground2Y = 550;
groundLength = 750;
ground2Length = 750;
groundSpeed = 2;
  
  
cloudX = 1800;
cloudY = 10;
cloudSpeed = 2;

r = 28;
g = 0;
b = 197;
}
