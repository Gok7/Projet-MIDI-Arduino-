#define USBCON
#include <Arduino.h> 
#include "Streaming.h"
#include "C_COMMANDE_MIDI.h"
#include "C_POTENTIOMETRE.h"
#include "C_CONTROLE.h"
#include "C_AFFICHEUR.h"
#include <SPI.h>
#include <SD.h>
#include <TFT.h> // Hardware-specific library
#define PIN_LCD_CHIPSELECT  7

//------------------------------------------------------------------------------

void Initialisation() {
    init();
    USBDevice.attach();
    delay(1);
    Serial.begin(9600);
}
//------------------------------------------------------------------------------

void Init_SD() {

    // make sure that the default chip select pin is set to
    // output, even if you don't use it:
    pinMode(PIN_LCD_CHIPSELECT, OUTPUT);
    Serial << "Initializing SD card...";
    if (!SD.begin(8)) {
        Serial << "failed!" << endl;
    }
    if (SD.begin(8)) {
        Serial << "OK!" << endl;
    }
}

int main(void) {

    Initialisation();


    C_CONTROLE Controle;
    // C_AFFICHEUR Afficheur;

    Controle.Controle_Set_Nombre_Commandes(3);
    Controle.Controle_Set_Commande(0, 0, 0, 100);
    Controle.Controle_Set_Commande(1, 1, 0, 50);
    Controle.Controle_Set_Commande(2, 2, 25, 50);

//    TFT TFTscreen = TFT(7, 0, 1);
//    TFTscreen.begin();
//    TFTscreen.background(255, 255, 255);
    while (1) {

        Controle.Run();
        Init_SD();
        delay(1000);
    }

    return 1;
}
