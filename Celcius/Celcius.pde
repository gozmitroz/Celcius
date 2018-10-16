// Sketch by Kane Kennedy, 12553273

// This sketch demonstrates platform and cloud movement, randomly generated platform lengths/gaps,
// and snowfall that can be controlled with a 'quantity' variable

void draw() {
  
  
  // Load gradient background image and call functions
  //*The image function below drastically affects fps*
  //image(background, 0, 0, 1920, 350);
  
  platform();
  cloud();
 
  // Snow draw code
    noStroke();
    for(int i = 0; i < quantity; i++) {
    snow[i].display();
    snow[i].fall();}
    
    println(frameRate);
}
