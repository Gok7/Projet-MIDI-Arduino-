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

class C_CONTROLE {
public:
    C_CONTROLE();
    
    void Run();
    int Donne_Message();
   
    
    C_LISTE_COMMANDES Liste_Commandes;
    C_POTENTIOMETRE Le_Potentiometre;

};

#endif	/* C_CONTROLE_H */

        
