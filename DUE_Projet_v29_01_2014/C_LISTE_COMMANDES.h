/* 
 * File:   C_LISTE_COMMANDES.h
 * Author: flopyy
 *
 * Created on 16 janvier 2014, 16:52
 */

#ifndef C_LISTE_COMMANDES_H
#define	C_LISTE_COMMANDES_H

#include "C_COMMANDE_MIDI.h"
#define NOMBRE_COMMANDES_MAX 3 

class C_LISTE_COMMANDES {
public:
    C_LISTE_COMMANDES(short int P_Nombre_Commandes=NOMBRE_COMMANDES_MAX);

    void Set_Nombre_Commandes(short int P_Nombre_Commandes=NOMBRE_COMMANDES_MAX);
    short int Get_Nombre_Commandes();
    C_COMMANDE_MIDI& Get_Commande(short int P_Numero_Commande);
    
    
    short int Nombres_Commandes;
    C_COMMANDE_MIDI Les_Commandes[NOMBRE_COMMANDES_MAX];
};

#endif	/* C_LISTE_COMMANDES_H */

