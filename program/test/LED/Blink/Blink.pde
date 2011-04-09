/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
}

void loop() {
  digitalWrite(10, LOW);
  digitalWrite(8, HIGH);   // set the LED on
  delay(100);              // wait for a second
  digitalWrite(8, LOW);    // set the LED off
  digitalWrite(9, HIGH);
  delay(100);              // wait for a second
  digitalWrite(9, LOW);    // set the LED off
  digitalWrite(10, HIGH);
  delay(100);
}
