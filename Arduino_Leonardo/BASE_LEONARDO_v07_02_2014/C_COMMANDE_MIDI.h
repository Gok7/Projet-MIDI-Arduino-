/* 
 * File:   C_COMMANDE_MIDI.h
 * Author: flopyy
 *
 * Created on 16 janvier 2014, 16:52
 */

#ifndef C_COMMANDE_MIDI_H
#define	C_COMMANDE_MIDI_H

#include "T_MESSAGE.h"

class C_COMMANDE_MIDI {
public:
    
    C_COMMANDE_MIDI();
    void Set_Code_MIDI(short int P_Code);
    void Set_Valeurs(short int P_Valeur_Mini, short int P_Valeur_Maxi);
    const T_MESSAGE& Donne_Message(float P_Valeur);//val entre 0 et 100
    
protected:
    
    T_MESSAGE Le_Message;
    short int Valeur_Mini;
    short int Valeur_Maxi;
};

#endif	/* C_COMMANDE_MIDI_H */

