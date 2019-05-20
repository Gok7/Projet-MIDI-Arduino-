#define ARDUINO_MAIN
#include <Arduino.h> 
#include "Streaming.h"
#include "C_COMMANDE_MIDI.h"
#include "C_POTENTIOMETRE.h"
#include "C_CONTROLE.h"
//#include "C_AFFICHEUR.h"

//------------------------------------------------------------------------------

void Initialisation() {
    init();
    delay(1);
#if defined(USBCON)
    USBDevice.attach();
#endif 
    Serial.begin(9600); // open a serial connection

}
//------------------------------------------------------------------------------

int main(void) {

    Initialisation();

    C_CONTROLE Controle;
    Controle.Controle_Set_Nombre_Commandes(3);
    Controle.Controle_Set_Commande(0, 0, 0, 100);
    Controle.Controle_Set_Commande(1, 1, 0, 50);
    Controle.Controle_Set_Commande(2, 2, 25, 50);

    while (1) {
        Controle.Run();
        delay(2000);
    }
    return 1;
}