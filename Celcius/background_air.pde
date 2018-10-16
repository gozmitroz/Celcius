void backGroundAir() {
  TableRow row = airQuality.getRow(backgroundcolour);
    int red = row.getInt(4);
    int blue = row.getInt(5);
    int green = row.getInt(6);
    background(red, blue, green);
  }
