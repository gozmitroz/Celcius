// Sketch by Kane Kennedy, 12553273

// This sketch demonstrates platform and cloud movement, randomly generated platform lengths/gaps,
// and snowfall that can be controlled with a 'quantity' variable

void draw() {
  
  
  // Load gradient background image and call functions
  image(background, 0, 0, 900, 350);
  cloud();
  platform();
 

  // Snow draw code
    for(int i = 0; i < quantity; i++) {
    snow[i].display();
    snow[i].fall();}
}
