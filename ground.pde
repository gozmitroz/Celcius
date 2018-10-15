void platform() {
  
  
  // Create ocean and initial platforms
  fill(8, 119, 178);
  rect(0, 350, 900, 500);
  fill(255, 255, 255);
  image(ground, groundX, groundY, groundLength, 100);
  image(ground2, ground2X, ground2Y, ground2Length, 100);
  
  
  // Platform movement
  groundX = groundX - groundSpeed;
  ground2X = ground2X - groundSpeed;
  
  
  // When platforms go off screen, reset position. Also determines y location and length of platforms that spawn (randomised).
  if (groundX < -700) {
    groundX = 900;
    groundY = random(550, 450);
    groundLength = random(700, 800);
}
  
  
    if (ground2X < -700) {
    ground2X = 900;
      ground2Y = random(550, 450);
       ground2Length = random(750, 800);
    }
}
