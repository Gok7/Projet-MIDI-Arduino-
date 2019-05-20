/* 
 * File:   C_AFFICHEUR.cpp
 * Author: flopyy
 * 
 * Created on 30 janvier 2014, 16:32
 */

#include "C_AFFICHEUR.h"

C_AFFICHEUR::C_AFFICHEUR() {
    
    TFTscreen = TFT(PIN_CLEARSCREEN, PIN_DATACOMMAND, PIN_RESET);
    TFTscreen.begin();
    Effacer();
    Set_Taille_Police(2);
}

void C_AFFICHEUR::Effacer() {

    // clear the screen with a black background
    TFTscreen.background(0, 0, 0);
     delay(1000);  // pause for dramatic effect
//    // write the static text to the screen
//    // set the font color to white
//    TFTscreen.stroke(255, 255, 255);
    
}

void C_AFFICHEUR::Set_Taille_Police(short P_Taille){
    
    TFTscreen.setTextSize(P_Taille);
}

void C_AFFICHEUR::Write(const char * P_Text, int16_t P_X, int16_t P_Y){
    
    TFTscreen.text(P_Text, P_X, P_Y);
    
}
