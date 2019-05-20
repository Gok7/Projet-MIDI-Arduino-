/* 
 * File:   C_CONTROLE.cpp
 * Author: flopyy
 * 
 * Created on 16 janvier 2014, 16:52
 */

#include "C_CONTROLE.h"
#include "C_POTENTIOMETRE.h"
#include "C_LISTE_COMMANDES.h"

#define DEBUG_C_CONTROLE

C_CONTROLE::C_CONTROLE() {
}
//------------------------------------------------------------------------------

void C_CONTROLE::Run() {

    float L_Valeur_Potentiometre = Le_Potentiometre.Get_Pourcentage();
    short int L_Nombres_Commandes = Liste_Commandes.Get_Nombre_Commandes();

    for (short int L_compteur = 0; L_compteur < L_Nombres_Commandes; L_compteur++) {

        C_COMMANDE_MIDI& L_Commande_MIDI = Liste_Commandes.Get_Commande(L_compteur);
        const T_MESSAGE& L_Message = L_Commande_MIDI.Donne_Message(L_Valeur_Potentiometre);

#ifdef DEBUG_C_CONTROLE
        L_Message.Affiche_Debug();
#endif
    }
}
//------------------------------------------------------------------------------
