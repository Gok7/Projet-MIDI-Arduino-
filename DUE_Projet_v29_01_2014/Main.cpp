#define ARDUINO_MAIN
#include <Arduino.h> 
#include "Streaming.h"
#include "C_COMMANDE_MIDI.h"
#include "C_POTENTIOMETRE.h"
#include "C_CONTROLE.h"
#include "MIDI.h"

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
    
    while (1) {
        Controle.Liste_Commandes.Set_Nombre_Commandes(3);
        Controle.Liste_Commandes.Les_Commandes[0]=C_COMMANDE_MIDI(0,20,60);
        Controle.Liste_Commandes.Les_Commandes[1]=C_COMMANDE_MIDI(1,10,30);
        Controle.Liste_Commandes.Les_Commandes[2]=C_COMMANDE_MIDI(2,50,100);
        Controle.Run();
        delay(2000);
    }
    return 1;
}
