#define USBCON
#include <Arduino.h> 
//#include "Streaming.h"
//#include "C_COMMANDE_MIDI.h"
//#include "C_POTENTIOMETRE.h"
//#include "C_CONTROLE.h"
//#include "C_AFFICHEUR.h"
//#include <SPI.h>
//#include <SD.h>
//#include <TFT.h> // Hardware-specific library
//------------------------------------------------------------------------------
void Initialisation() {
    init();
    USBDevice.attach();
    delay(1);
    Serial.begin(9600);
}
//------------------------------------------------------------------------------

int main(void) {

    Initialisation();

//    C_CONTROLE Controle;
//   // C_AFFICHEUR Afficheur;
//
//    Controle.Controle_Set_Nombre_Commandes(3);
//    Controle.Controle_Set_Commande(0, 0, 0, 100);
//    Controle.Controle_Set_Commande(1, 1, 0, 50);
//    Controle.Controle_Set_Commande(2, 2, 25, 50);
//    
//
//    Controle.Run();
//    delay(5000);

//
//    TFT  TFTscreen = TFT(7, 0, 1);
//    // try to access the SD card;
//    Serial<<"Initializing SD card...";
//    if (!SD.begin(8)) {
//        Serial<<"failed!";
//        return 0;
//    }
//    Serial<<"OK!";
//
//    // initialize and clear the GLCD screen
//    TFTscreen.begin();
    //    TFTscreen.background(255, 255, 255);

    return 1;
}
