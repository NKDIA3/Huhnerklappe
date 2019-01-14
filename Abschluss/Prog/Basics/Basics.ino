
// the setup function runs once when you press reset or power the board
#include <Wire.h>
#include "RTClib.h"
RTC_DS1307 rtc;
char daysOfTheWeek[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

int sensorValue = 0;
int outputValue = 0;
#define M1 D5
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(M1, OUTPUT);
  pinMode(D6, OUTPUT);
  pinMode(A0, INPUT);
  Serial.begin(115200);

  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    while (1);
  }

  if (! rtc.isrunning()) {
    Serial.println("RTC is NOT running!");    
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }
}

// the loop function runs over and over again forever
void loop() {
  sensorValue = analogRead(A0);
  //digitalWrite(D5, HIGH);
  //digitalWrite(D6, LOW);// turn the LED on (HIGH is the voltage level)
  Serial.println("Links");
  DateTime now = rtc.now();
  Serial.print(now.year(), DEC);
  Serial.print('/');
  Serial.print(now.month(), DEC);
  Serial.print('/');
  Serial.print(now.day(), DEC);
  Serial.print(" (");
  Serial.print(daysOfTheWeek[now.dayOfTheWeek()]);
  Serial.print(") ");
  Serial.print(now.hour(), DEC);
  Serial.print(':');
  Serial.print(now.minute(), DEC);
  Serial.print(':');
  Serial.print(now.second(), DEC);
  Serial.println();
  Serial.print("sensor = ");
  Serial.println(sensorValue);
  
  delay(5000);                       // wait for a second
  //digitalWrite(D5, LOW);    // turn the LED off by making the voltage LOW
  //digitalWrite(D6, HIGH);
  Serial.println("Rechts");
 
  sensorValue = analogRead(A0);
  Serial.print("sensor = ");
  Serial.println(sensorValue);
  delay(5000);                       // wait for a second
}
