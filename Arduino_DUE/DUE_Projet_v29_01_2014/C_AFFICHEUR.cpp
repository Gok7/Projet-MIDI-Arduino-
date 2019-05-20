/* 
 * File:   C_AFFICHEUR.cpp
 * Author: flopyy
 * 
 * Created on 30 janvier 2014, 16:32
 */

#include "C_AFFICHEUR.h"
#define PIN_CHIPSELECT = 10;
#define PIN_DATACOMMAND = 9;
#define PIN_RESET = 8; 


C_AFFICHEUR::C_AFFICHEUR():TFTscreen(10, 9, 8)
{
    TFTscreen.begin();
    TFTscreen.background(0, 0, 0);
    TFTscreen.stroke(255, 255, 255);
    Set_Taille_Police(2);
}

void C_AFFICHEUR::Effacer() {

    TFTscreen.background(0, 0, 0);

}

void C_AFFICHEUR::Set_Taille_Police(short P_Taille){
    
    TFTscreen.setTextSize(P_Taille);
}

void C_AFFICHEUR::Write(const char * P_Text, int16_t P_X, int16_t P_Y){
    //si police caractere = 2
    //faire y + 15 pour ligne suivante
    TFTscreen.text(P_Text, P_X, P_Y);
    
}
