void platform() {

  //Create background
  //for (int i = 400; i >= 0; i--) {
  //  stroke(r, i, b);
  //  line(0, i, width, i);
  //}    

  // Create ocean and initial platforms


//sealvldata
    TableRow row7 = sealvl.getRow(sealevel);
    float sealvlY = row7.getFloat(2);
    fill(8, 119, 178);
    rect(0, sealvlY, 1930, 720);
    fill(255, 255, 255);

//platformlngth
    //TableRow row1 = icelvl.getRow(ice);
    TableRow row2 = temp.getRow(ice);
    float gapLength = row2.getInt(2);

    image(ground, groundX, sealvlY, gapLength, 100);
    image(ground2, ground2X, sealvlY, gapLength, 100);
  


  // Platform movement
  groundX = groundX - groundSpeed;
  ground2X = ground2X - groundSpeed;


  // When platforms go off screen, reset position. Also determines y location and length of platforms that spawn (randomised).
  if (groundX < -700) {
    groundX = 1920;
    groundY = random(550, 450);
    groundLength = random(700, 800);
  }


  if (ground2X < -700) {
    ground2X = 1920;
    ground2Y = random(550, 450);
    ground2Length = random(750, 800);
  }
}
