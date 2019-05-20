/* 
 * File:   C_AFFICHEUR.h
 * Author: flopyy
 *
 * Created on 30 janvier 2014, 16:32
 */

#ifndef C_AFFICHEUR_H
#define	C_AFFICHEUR_H

#include <TFT.h>  // Arduino LCD library
#include <SPI.h>
#include <SD.h>
#include "string.h"

class C_AFFICHEUR {
public:
    C_AFFICHEUR();
    void Init_SD();
    void Effacer(int16_t P_ligne);
    void Set_Taille_Police(short P_Taille = 2);
    void Ecrire(const char * P_Text, int16_t P_ligne);

protected:
    char Les_Lignes[10][20];//10 lignes,20 char par lignes.
    TFT TFTscreen;

};

#endif	/* C_AFFICHEUR_H */

