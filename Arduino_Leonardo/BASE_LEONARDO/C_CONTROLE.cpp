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
    //P_Potentiometre pour choisir le potentiometre
    
void C_CONTROLE::Set_Pin_Pot(short P_Potentiometre){
    
    Le_Potentiometre.Set_Pin_Pot(P_Potentiometre);
}

void C_CONTROLE::Controle_Set_Nombre_Commandes(short int P_Nombre_Commande) {

    Liste_Commandes.Set_Nombre_Commandes(P_Nombre_Commande);
}

void C_CONTROLE::Controle_Set_Commande(short int P_Numero, short int P_code,
        short int P_Valeur_Min, short int P_Valeur_Max) {

    Liste_Commandes.Set_Commande(P_Numero,P_code,P_Valeur_Min,P_Valeur_Max);

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
