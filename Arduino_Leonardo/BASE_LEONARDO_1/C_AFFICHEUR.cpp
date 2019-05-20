/* 
 * File:   C_AFFICHEUR.cpp
 * Author: flopyy
 * 
 * Created on 30 janvier 2014, 16:32
 */
// pin definition for the Leonardo
// #define CS   7
// #define DC   0
// #define RESET  1
//#define SD_CS 8

#include "C_AFFICHEUR.h"
#define PIN_LCD_CHIPSELECT  7
#define PIN_DATACOMMAND  0
#define PIN_RESET  1
#define SD_CHIPSELECT 8

C_AFFICHEUR::C_AFFICHEUR() : TFTscreen(7, 0, 1) {

    TFTscreen.begin();
    TFTscreen.background(0, 0, 0);
    Set_Taille_Police(2);
    Init_SD();
}

void C_AFFICHEUR::Init_SD() {

   

    // make sure that the default chip select pin is set to
    // output, even if you don't use it:
    pinMode(PIN_LCD_CHIPSELECT, OUTPUT);

    // see if the card is present and can be initialized:
    if (!SD.begin(SD_CHIPSELECT)) {
       
    } 
    else {
        
    }
}

void C_AFFICHEUR::Effacer(int16_t P_ligne) {
    //pour effacer il faut mettre la même couleur de texte que le background,
    //réecrire le même texte par dessus
    
    TFTscreen.stroke(0, 0, 0);
    TFTscreen.text(Les_Lignes[P_ligne], 0, (P_ligne*15));//a tester

}

void C_AFFICHEUR::Set_Taille_Police(short int P_Taille) {

    TFTscreen.setTextSize(P_Taille);
}

void C_AFFICHEUR::Ecrire(const char * P_Text, int16_t P_ligne) {
    //Il faut obligatoirement effacer avant d'écrire
    //si police caractere = 2, faire y + 15 pour ligne suivante
    Effacer(P_ligne);
    strcpy(Les_Lignes[P_ligne], P_Text);
    TFTscreen.stroke(255, 255, 255);
    TFTscreen.text(Les_Lignes[P_ligne], 0, (P_ligne * 15)); //a tester

}



