/* Hühnerklappe V1
 *  
 *  Aktuelle Funktion:
 *  
 *  
 *  
 *  
 *  
 *  
 *  
 *  
 *  Nils Karst Vidit-systems.de
 */

#include <Wire.h>                                                 //I2C Bus Lib
#include "RTClib.h"                                               //RTC Lib
RTC_DS1307 rtc;

char daysOfTheWeek[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}; //Variable für Anzeige des Wochentags



int sensorValue = 0;                                              //Sensor Wert (Standard =)

#define M1 D5                                                      //Motorsteuerung Pin 1
#define M2 D6                                                      //Motorsteuerung Pin 2
#define LDR A0                                                     //Fotottransistor am ADC (Pin A0)
#define T1 D7                                                      //Taster an GPIO13

void setup() {                                                    //Code läuft am Start einmal durch
  pinMode(M1, OUTPUT);                                            //M1,M2 als Ausgang
  pinMode(M2, OUTPUT);
  pinMode(LDR, INPUT);                                            //LDR als Eingang
  pinMode(T1, INPUT_PULLUP);                                      //Taster als Eingang mit Pullup

  Serial.begin(115200);                                           //Serielle Komunikation aktivieren Baudt 115200

  if (! rtc.begin()) {                                            //Für Debugging
    Serial.println("Verbindung zur RTC fehlgeschlagen");          //Wenn rtc.begin aus lib nicht erfolgreich ausgeführt wurde (--> keine Verbindung zur RTC) 
    while (1);                                                    //wird seriell "Verbindung zur RTC fehlgeschlagen" ausgegeben
  }
  
  if (! rtc.isrunning()) {                                        //Für Debugging
    Serial.println("Zeit nich enthalten");                        
    Serial.println("Setze Zeit...");                              
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));               //Falls keine Zeit in der RTC gesetz war wird die Zeit des Kompilierens gesetzt
  }
  int start = digitalRead(T1);                                    //Status Tür einlesen
  if ( start == HIGH ){                                              //Wenn offen runter fahren bis geschlossen 
    Serial.println("Tür offen --> kalibrierung");
    while( start == HIGH ){
      runter();
      delay(100);
      Serial.println("Fahre runter");
      start = digitalRead(T1);
    }
    aus();
    Serial.println("Kalibriert");
  }  
}

void loop() {
  sensorValue = analogRead(A0);                                   //Einlesen des ADC 0....1024

}

void runter(){                                                    //Unterprogramm runter 
  digitalWrite(M1, HIGH);                                         //Beschaltung siehe Datasheet LS293DD
  digitalWrite(M2, LOW);
}

void hoch(){
  digitalWrite(M1, LOW);                                         //Beschaltung siehe Datasheet LS293DD
  digitalWrite(M2, HIGH);
}
void aus(){
  digitalWrite(M1, LOW);                                         //Beschaltung siehe Datasheet LS293DD
  digitalWrite(M2, LOW);
}
