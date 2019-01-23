/* Hühnerklappe V1
 *  Nils Karst 
 *  Vidit-systems
 *  15.01.19
 */

#include <Wire.h>                                                 //I2C Bus Lib
#include "RTClib.h"                                               //RTC Lib
RTC_DS1307 rtc;

char daysOfTheWeek[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}; //Variable für Anzeige des Wochentags

int sensorValue = 0;                                              //Sensor Wert (Standard = 0)
int State = 0;                                                    //Status der Klappe
#define M1 D5                                                     //Motorsteuerung Pin 1
#define M2 D6                                                     //Motorsteuerung Pin 2
#define LDR A0                                                    //Fototransistor am ADC (Pin A0)
#define T1 D7                                                     //Taster an GPIO13

void setup() {                                                    //Code läuft am Start einmal durch
  pinMode(M1, OUTPUT);                                            //M1,M2 als Ausgang
  pinMode(M2, OUTPUT);                                            
  pinMode(LDR, INPUT);                                            //LDR als Eingang
  pinMode(T1, INPUT_PULLUP);                                      //Taster als Eingang mit Pullup

  Serial.begin(115200);                                           //Serielle Kommunikation aktivieren Baud 115200

  if (! rtc.begin()) {                                            //Für Debugging
    Serial.println("Verbindung zur RTC fehlgeschlagen");          //Wenn rtc.begin aus lib nicht erfolgreich ausgeführt wurde (--> keine Verbindung zur RTC) 
    while (1);                                                    //wird seriell "Verbindung zur RTC fehlgeschlagen" ausgegeben
  }
  
  if (! rtc.isrunning()) {                                        //Für Debugging
    Serial.println("Zeit nicht enthalten");                        
    Serial.println("Setze Zeit...");                              
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));               //Falls keine Zeit in der RTC gesetz war, wird die Zeit des Kompilierens gesetzt
  }
             
  if ( digitalRead(T1) == HIGH ){                                              //Wenn offen, runter fahren bis geschlossen 
    Serial.println("Tür offen --> Kalibrierung");
    while( digitalRead(T1) == HIGH ){
      runter();
      delay(100);
      Serial.println("Fahre runter");
    }
    aus();
    State=0;
    Serial.println("Kalibriert");
    
    DateTime now = rtc.now();                                                   //RTC Zeit auslesen
    Serial.print(now.year(), DEC);                                              //Aktuelle Zeit und Datum ausgeben (COM)
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
   
  } 
}

void loop() {
  DateTime now = rtc.now();
  int std = now.hour();                                                        //aktuelle Stunde einlesen
  sensorValue = analogRead(LDR);                                                //Einlesen des ADC 0....1024
  if((State == 0 )&& (sensorValue >= 101) && (std >= 5 ) && (std <= 18 )) {   // Wenn die Tür unten,hell,zwischen 5 und 18 Uhr --> Tür hochfahren
    hoch();
    delay(3800);
    aus();
    Serial.println("oben");
    State=1;
  }

  if((State == 1 )&& (sensorValue <= 101) && (std <= 4  || std >= 19 )) {  // Wenn die Tür oben,dunkel,vor 5 und nach 18 Uhr --> Tür runterfahren    
    while( digitalRead(T1) == HIGH ){
      runter();
      delay(100);
      Serial.println("Fahre runter");
    }
    aus(); 
    Serial.println("unten");
    State=0;
  }
}

void hoch(){                                                                  //Unterprogramme 
  digitalWrite(M1, HIGH);                                                     //Beschaltung siehe Datasheet LS293DD
  digitalWrite(M2, LOW);
}

void runter(){
  digitalWrite(M1, LOW);                                                      //Beschaltung siehe Datasheet LS293DD
  digitalWrite(M2, HIGH);
}
void aus(){
  digitalWrite(M1, LOW);                                                      //Beschaltung siehe Datasheet LS293DD
  digitalWrite(M2, LOW);
}
