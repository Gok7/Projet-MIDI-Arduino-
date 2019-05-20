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
    C_COMMANDE_MIDI(int P_Code=0,int P_Valeur_Mini=0, int P_Valeur_Maxi=127);
    void Set_Code_MIDI(int P_Code);
    void Set_Valeurs(int P_Valeur_Mini, int P_Valeur_Maxi);
    const T_MESSAGE& Donne_Message(float P_Valeur);//val entre 0 et 100
    
protected:
    
    T_MESSAGE Le_Message;
    int Valeur_Mini;
    int Valeur_Maxi;
};

#endif	/* C_COMMANDE_MIDI_H */

