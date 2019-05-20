/* 
 * File:   C_LISTE_COMMANDES.cpp
 * Author: flopyy
 * 
 * Created on 16 janvier 2014, 16:52
 */

#include "C_LISTE_COMMANDES.h"

C_LISTE_COMMANDES::C_LISTE_COMMANDES(short int P_Nombre_Commandes) {
    
    Set_Nombre_Commandes(P_Nombre_Commandes);
    
}
//------------------------------------------------------------------------------

void C_LISTE_COMMANDES::Set_Nombre_Commandes(short int P_Nombre_Commandes) {

    if (P_Nombre_Commandes >= 1 && P_Nombre_Commandes <= NOMBRE_COMMANDES_MAX) {
        Nombres_Commandes = P_Nombre_Commandes;
    }
}
//------------------------------------------------------------------------------

short int C_LISTE_COMMANDES::Get_Nombre_Commandes() {

    return Nombres_Commandes;
}
//------------------------------------------------------------------------------

C_COMMANDE_MIDI& C_LISTE_COMMANDES::Get_Commande(short int P_Numero_Commande) {

    C_COMMANDE_MIDI& L_Commande_MIDI = Les_Commandes[P_Numero_Commande];

    return L_Commande_MIDI;
}
//------------------------------------------------------------------------------
//en fonction du nombre de commande on aura un message.
//ex si 3 commandes, alors 3 Messages.