void printTemperatureData() { 
  //for (int ic = 1; ic < temp.getRowCount(); ic++) {
  TableRow row3 = temp.getRow(temperature_data);
  float icemelted = row3.getFloat(1);
  fill(0);
  textSize(18);
  text(icemelted, 280, 50);
  text("Polar Cap (per Million Sqm):", 20, 50);
}
//}
void co2Data() { 
  //for (int ic = 1; ic < airQuality.getRowCount(); ic++) {
  TableRow row4 = airQuality.getRow(co2_data);
  float carbon = row4.getFloat(2);
  fill(0);
  textSize(18);
  text(carbon, 280, 80);
  text("Co2 Measurement:", 20, 80);
  //noFill();
}
//}

void yearCounter() { 
  //for (int ic = 1; ic < airQuality.getRowCount(); ic++) {
  TableRow row5 = airQuality.getRow(year_counter);
  int yearspassed = row5.getInt(0);
  fill(0);
  textSize(18);
  text(yearspassed, 285, 110);
  text("YEAR:", 20, 110);
  //noFill();
}
