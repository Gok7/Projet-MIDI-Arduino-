/* 
 * File:   C_CONTROLE.h
 * Author: flopyy
 *
 * Created on 16 janvier 2014, 16:52
 */

#ifndef C_CONTROLE_H
#define	C_CONTROLE_H

#include "C_LISTE_COMMANDES.h"
#include "C_POTENTIOMETRE.h"
#include "C_AFFICHEUR.h"

class C_CONTROLE {
public:
    C_CONTROLE();
    void Controle_Set_Nombre_Commandes(short int P_Nombre_Commande);
    void Controle_Set_Commande(short int P_Numero, int P_code,
            short int P_Valeur_Min, short int P_Valeur_Max);
    void Run();
   
protected:
    C_LISTE_COMMANDES Liste_Commandes;
    C_POTENTIOMETRE Le_Potentiometre;
  
};

#endif	/* C_CONTROLE_H */

        
