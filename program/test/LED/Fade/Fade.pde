/*
 Fade
 
 This example shows how to fade an LED on pin 9
 using the analogWrite() function.
 
 This example code is in the public domain.
 
 */
int brightness[] = {0,0,0};
int channel = 0;
int fadeAmount = 5;    // how many points to fade the LED by

void setup()  { 
  Serial.begin(57600);
  // declare pin 9 to be an output:
  pinMode(9, OUTPUT); //Blue
  pinMode(10, OUTPUT); //Green
  pinMode(8, OUTPUT); //Red
} 

void loop()  { 
  // set the brightness of pin 9:
  analogWrite(9,  brightness[0]);    
  analogWrite(10, brightness[1]); 
  analogWrite(8, brightness[2]);
  
  randomSelect();
  
  // change the brightness for next time through the loop:
  brightness[channel] = brightness[channel] + fadeAmount;
    
  // wait for 30 milliseconds to see the dimming effect    
  delay(30);                            
}

void randomSelect(){
  if (isChannel(0) && isChannel(1) && isChannel(2))  {
   channel = random(3);
  }
  
    // reverse the direction of the fading at the ends of the fade: 
  if ((brightness[channel] == 0 && fadeAmount < 0) || (brightness[channel] == 255 && fadeAmount > 0)) {
    fadeAmount = -fadeAmount ; 
  } 
}

boolean isChannel(int i){
  return (brightness[i] == 0 || brightness[i] == 255);
}
