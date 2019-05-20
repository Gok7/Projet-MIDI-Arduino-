///* 
// * File:   C_AFFICHEUR.cpp
// * Author: flopyy
// * 
// * Created on 30 janvier 2014, 16:32
// */
//// pin definition for the Leonardo
//// #define CS   7
//// #define DC   0
//// #define RESET  1
////#define SD_CS 8
//
//#include "C_AFFICHEUR.h"
//#define PIN_LCD_CHIPSELECT  7
//#define PIN_DATACOMMAND  0
//#define PIN_RESET  1
//#define SD_CHIPSELECT 8
//
//C_AFFICHEUR::C_AFFICHEUR() : TFTscreen(7, 0, 1) {
//    
//    Ligne=0;
//    Colonne=0;
//    TFTscreen.begin();
//    TFTscreen.background(0, 0, 0);
//    TFTscreen.stroke(255, 255, 255);
//    Set_Taille_Police(2);
//    
//    Init_SD();
//}
//
//void C_AFFICHEUR::Init_SD() {
//
//    Ecrire("Init SD",0,0);
//    
//    // make sure that the default chip select pin is set to
//    // output, even if you don't use it:
//    pinMode(PIN_LCD_CHIPSELECT, OUTPUT);
//
//    // see if the card is present and can be initialized:
//    if (!SD.begin(SD_CHIPSELECT)) {
//         Ecrire("Carte corrompue",0,15);
//         Ecrire("ou absente",0,30);
//        // don't do anything more:
//        return;
//    }
//    Ecrire("Carte Initialisé",0,15);
//}
//
//void C_AFFICHEUR::Effacer() {
//    //pour effacer il faut mettre la même couleur de texte que le background,
//    //réecrire le même texte par dessus
//    
//    TFTscreen.stroke(0,0,0);//set text color
//    TFTscreen.text(ScreenArray, Ligne, Colonne);
//    TFTscreen.background(0, 0, 0);
//
//}
//
//void C_AFFICHEUR::Set_Taille_Police(short P_Taille){
//    
//    TFTscreen.setTextSize(P_Taille);
//}
//
//void C_AFFICHEUR::Ecrire(const char * P_Text, int16_t P_X, int16_t P_Y){
//    //si police caractere = 2
//    //faire y + 15 pour ligne suivante
//    TFTscreen.stroke(255,255,255);
//    TFTscreen.text(P_Text, P_X, P_Y);
//    
//}
//
//
//
// 