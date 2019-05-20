/* 
 * File:   C_SERIE.cpp
 * Author: Captain_Phillips
 * 
 * Created on 9 avril 2014, 15:36
 */

//Separation of USB and serial communication.

//On the Leonardo, the main Serial class refers to the virtual serial driver on
//the Leonardo for connection to your computer over USB. It's not connected to 
//        the physical pins 0 and 1 as it is on the Uno and earlier boards.
//        To use the hardware serial port (pins 0 and 1, RX and TX), use Serial1. 
//        (See the Serial reference pages for more information.) 



#include "C_SERIE.h"

C_SERIE::C_SERIE() {

    Nb_Car_Max_Chaine_Lu = 14; 
    Taille_Buffer_Global = sizeof (Buffer_Global) / sizeof (Buffer_Global[0]);
    strcpy(Chaine_Debut_Paquet, "Debut_Paquet!#");
    Char_Fin_Mode_Prog = '@';
    Char_Fin_Paquet = '.';
    Index_Verif = 0;
    Index_Lecture_Global = 0;
    Mode_Prog = false;
    memset(Buffer_Global, 0, sizeof (Buffer_Global));
    memset(Chaine_Lu, 0, sizeof (Chaine_Lu));
}

C_SERIE::~C_SERIE() {
}

bool C_SERIE::Verif_Mode_Prog() {//   Pas de newline please

    if (Serial.available()) {

        //idéalement envoyer @ puis Debut_Paquet!#@ pour activer le mode prog
        Char_Lu_Serie = Serial.read();

        if (Index_Verif < Nb_Car_Max_Chaine_Lu && Char_Lu_Serie != Char_Fin_Mode_Prog) {
            Chaine_Lu[Index_Verif] = Char_Lu_Serie;
            Index_Verif++;
        }
        if (Char_Lu_Serie == Char_Fin_Mode_Prog) { 

            Chaine_Lu[Index_Verif] = 0; 
            if (strcmp(Chaine_Debut_Paquet, Chaine_Lu) == 0) {

                Serial.print("\n Debut reception paquet OK ");
                Mode_Prog = true;
                memset(Chaine_Lu, 0, sizeof (Chaine_Lu));
            } else {
                Serial.print("\n Erreur de debut reception  ");
            }
            Char_Lu_Serie = 0;
            Index_Verif = 0;
            Index_Lecture_Global = 0;

            memset(Buffer_Global, 0, sizeof (Buffer_Global));
            memset(Chaine_Lu, 0, sizeof (Chaine_Lu));
            Serial.print("\nMode prog Reception : ");
            Serial.print(Chaine_Lu);
        }
    }
    return Mode_Prog;
}

char* C_SERIE::Lecture_Serie_Global() {

    Char_Lu_Serie = 0;
    while (Mode_Prog == true) {

        if (Serial.available()) {
            Char_Lu_Serie = Serial.read();

            if (Char_Lu_Serie == Char_Fin_Paquet) {

                Buffer_Global[Index_Lecture_Global] = 0;
                Index_Lecture_Global = 0;
                Char_Lu_Serie = 0;
                Serial.print("\nReception Buffer global : ");
                Serial.print(Buffer_Global);
                Mode_Prog = false;
            } else { 
                Buffer_Global[Index_Lecture_Global] = Char_Lu_Serie;
                Index_Lecture_Global++;
            }
        }
    }
    return Buffer_Global;
}



