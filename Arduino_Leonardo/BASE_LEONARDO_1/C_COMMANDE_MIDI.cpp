/* 
 * File:   C_COMMANDE_MIDI.cpp
 * Author: flopyy
 * 
 * Created on 16 janvier 2014, 16:52
 */

#include "C_COMMANDE_MIDI.h"
#include <math.h>

C_COMMANDE_MIDI::C_COMMANDE_MIDI() {
   
}
//------------------------------------------------------------------------------
void C_COMMANDE_MIDI::Set_Code_MIDI(short int P_Code) {
    
    if(P_Code>=0 && P_Code<= 127) Le_Message.Set_Code_MIDI(P_Code);
    
}
//------------------------------------------------------------------------------
void C_COMMANDE_MIDI::Set_Valeurs(short int P_Valeur_Mini, short int P_Valeur_Maxi) {

    Valeur_Mini = P_Valeur_Mini;
    Valeur_Maxi = P_Valeur_Maxi;

}
//------------------------------------------------------------------------------
const T_MESSAGE& C_COMMANDE_MIDI::Donne_Message(float P_Valeur) {
//voir map();
    //calcul pourcentage par rapport à valeur max et min
    float L_Valeur_Out = P_Valeur * (Valeur_Maxi - Valeur_Mini) / 100.0f + Valeur_Mini;
    L_Valeur_Out=round(L_Valeur_Out);
    
    Le_Message.Set_Valeur_MIDI((int) L_Valeur_Out); 

    const T_MESSAGE& L_message = Le_Message;

    return L_message;
} 
//------------------------------------------------------------------------------