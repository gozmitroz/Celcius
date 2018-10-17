// Sketch by Kane Kennedy, 12553273

// This sketch demonstrates platform and cloud movement, randomly generated platform lengths/gaps,
// and snowfall that can be controlled with a 'quantity' variable

void draw() {


  // Load gradient background image and call functions
  //*The image function below drastically affects fps*
  //image(background, 0, 0, 1920, 350);
  backGroundAir();
  platform();
  cloud();
  printTemperatureData();
  co2Data();
  yearCounter();

  // Snow draw code
  noStroke();
  fill(255);
  for (int i = 0; i < quantity; i++) {
    snow[i].display();
    snow[i].fall();
  }

  println(frameRate);

  int t = 0;
  while (t < 200)
  {
    t++;
    if (t == 100)
    {
      temperature_data = temperature_data + 1 ;
    }
  }

  int c = 0;
  while (c < 200)
  {
    c++;
    if (c == 1)
    {
      co2_data = co2_data + 1 ;
    }
  }

  int y = 0;
  while (y < 200)
  {
    y++;
    if (y == 3)
    {
      year_counter = year_counter+1;
    }
  }

  int bg = 0;
  while (bg < 200)
  {
    bg++;
    if (bg == 3)
    {
      backgroundcolour = backgroundcolour +1;
    }
  }

  int sealvl = 0; 
  while (sealvl < 200)
  {
    sealvl++;
    if (sealvl == 3)
    {
      sealevel = sealevel + 1;
    }
  }
  
  int gapLength = 0;
  while (gapLength < 200)
  {
    gapLength++;
    if(gapLength ==3)
    {
      ice = ice +1;
    }  
  }
}
