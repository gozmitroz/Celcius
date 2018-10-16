void cloud() {
  
  
  // Cloud movement
  cloudX = cloudX - cloudSpeed;
  
  
  // When cloud goes off screen, reset position
  if(cloudX < -200) {
    cloudX = 1920;
    cloudY = random(10, 100);
  }
  
  
  // Spawning the first cloud
    image(cloud, cloudX, cloudY, 200, 50);
}
  
