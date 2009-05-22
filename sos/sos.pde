/*
 * Blink
 *
 * The basic Arduino example.  Turns on an LED on for one second,
 * then off for one second, and so on...  We use pin 13 because,
 * depending on your Arduino board, it has either a built-in LED
 * or a built-in resistor so that you need only an LED.
 *
 * http://www.arduino.cc/en/Tutorial/Blink
 */

int ledPin = 13;                // LED connected to digital pin 13
int gap = 100;
int dot = 250;
int dash = 700;
int long_gap = 500;
int count = 0;
//int o[] = {dash, gap, dash, gap, dash, gap};
//int s[] = {dash, gap, dash, gap, dash, gap};
int message[] = {long_gap, dash, gap, dash, gap, dash, gap, dot, gap, dot, gap, dot, gap, dash, gap, dash, gap, dash, gap};
void setup()                    // run once, when the sketch starts
{
  pinMode(ledPin, OUTPUT);      // sets the digital pin as output
}

void loop()                     // run over and over again
{
  if (count%2==0){ 
    digitalWrite(ledPin, LOW); 
  }
  else{
    digitalWrite(ledPin, HIGH);
  }
  delay(message[count%18]);                 
  count++;
}
