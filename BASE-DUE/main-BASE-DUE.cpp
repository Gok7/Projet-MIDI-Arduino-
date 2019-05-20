/* 
 * File:   main.cpp
 * Author: Administrateur
 *
 * Created on 24 décembre 2013, 09:28
 */


/*
 * 
 */

#define ARDUINO_MAIN

#include <Arduino.h> 






//##############################################################################
#define PORT_LED 13





//##############################################################################


bool Etat_Led=false;
//##############################################################################


#define POSITION_CADRE_Y 40
#define HAUTEUR_CADRE ST7735_TFTWIDTH - POSITION_CADRE_Y
#define LARGEUR_CADRE ST7735_TFTHEIGHT 





//-----------------------------------------------------------------------------
void Initialisation()
{
  init();
  delay(1);
#if defined(USBCON)
	USBDevice.attach();
#endif

        
  pinMode(PORT_LED, OUTPUT);  
 // Serial.begin(9600);     
  

  
}



//------------------------------------------------------------------------------


int main (void)
{
  Initialisation();



  while (1) {

    Etat_Led = !Etat_Led;
    digitalWrite(PORT_LED, Etat_Led); 
    delay(1000);
//   if (serialEventRun) serialEventRun();    
  }

  return 1;
}
