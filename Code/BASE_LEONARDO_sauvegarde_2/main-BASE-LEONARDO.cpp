/* 
 * File:   main.cpp
 * Author: Administrateur
 *
 * Created on 24 décembre 2013, 09:28
 */


/*
 * 
 */






#define USBCON
#include <Arduino.h>


//#include <itoa.h>



//##############################################################################
#define PORT_LED 13




//##############################################################################


bool Etat_Led=false;
//##############################################################################


void Inistialisation()
{
  init();
  USBDevice.attach();
  
//#if defined(USBCON)
	//USBDevice.attach();
//#endif

  
  delay(1);
  pinMode(PORT_LED, OUTPUT);  
  Serial.begin(9600);      
  
 
  
}



//------------------------------------------------------------------------------
int Valeur=0;
int Anciene=0;


int main (void)
{
  Inistialisation();



  while (1) {
 
    
//    Etat_Led = !Etat_Led;
//
//    digitalWrite(PORT_LED, Etat_Led); 
//  
//    delay(1000);       
//    Serial.print("TOP");
 
      Valeur=analogRead(A0);
      Valeur >>=3;
      if (Valeur != Anciene){
       Serial.println(Valeur,10);   
       Anciene=Valeur;
      }

     delay(1);
              
     
  }

  return 1;
}
