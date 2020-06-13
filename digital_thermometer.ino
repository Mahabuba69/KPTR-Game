#include <LiquidCrystal.h>
LiquidCrystal lcd (8,9,10,11,12,13);
int value;
float cel,far;
void setup()
{
 lcd.begin(16,2); 
}
void loop()
{
 value = analogRead(A0);
 cel = (value * 0.48828);
 far = (1.8 * cel) + 32;
 lcd.setCursor(0,0);
 lcd.print("Digital Thermometer");
 lcd.setCursor(2,1);
 lcd.print(cel);
 lcd.print(char(223));
 lcd.print("C");
 lcd.setCursor(11,1);
 lcd.print(far);
 lcd.print(char(223));
 lcd.print("F");
 delay(1000);
}
