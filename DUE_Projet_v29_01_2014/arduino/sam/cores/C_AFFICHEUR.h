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
#define PIN_CLEARSCREEN   10
#define PIN_DATACOMMAND   9
#define PIN_RESET  8


class C_AFFICHEUR {
public:
    C_AFFICHEUR();
    void Effacer();
    void Set_Taille_Police(short P_Taille=2);
    void Write(const char * P_Text, int16_t P_X, int16_t P_Y);
    
private:
    char ScreenArray[4];
    TFT TFTscreen=NULL;
};

#endif	/* C_AFFICHEUR_H */

