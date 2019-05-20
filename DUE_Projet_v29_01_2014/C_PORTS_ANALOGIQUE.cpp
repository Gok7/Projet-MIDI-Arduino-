///* 
// * File:   C_PORTS_ANALOGIQUE.cpp
// * Author: flopyy
// * 
// * Created on 15 janvier 2014, 15:15
// */
//
//#include "C_PORTS_ANALOGIQUE.h"
//#include <Arduino.h> 
//#include "Streaming.h"
////#define DEBUG_LECTURE_ANALOGIQUE
//C_PORTS_ANALOGIQUE::C_PORTS_ANALOGIQUE() {
//    
//    Initialisation_Ports_Analogique();
//}
//
////------------------------------------------------------------------------------
//void C_PORTS_ANALOGIQUE::Initialisation_Ports_Analogique() {
//    
//    analogReadResolution(12); //config res 12 bits
//    
//    //configuration des ports analogique, en entrée ou sortie.
//    int L_index_Port = A0;
//    int L_index = 0;
//    while (L_index_Port < A11+1) {
//
//        Pins_Analogique[L_index] = L_index_Port;
//        Valeurs_Analogique[L_index] = 0;
//        pinMode(Pins_Analogique[L_index], INPUT);//tous en entrée
//        L_index_Port++;
//        L_index++;
//    }
//
//    Serial.begin(9600); // open a serial connection
//}
////------------------------------------------------------------------------------
//
//void C_PORTS_ANALOGIQUE::Affichage_Debug_Serial_Analogique() { 
//    
//    for (int L_index = 0; L_index < NOMBRE_DE_PORT_ANALOGIQUE; L_index++) {
//
//        Serial<<"Entree Analogique "<<L_index<<" = "
//                <<Valeurs_Analogique[L_index]<<endl;    
//    }
//    
//    Serial.print("\n\n\n\n");
//    delay(2000);
//}
////------------------------------------------------------------------------------
//
//void C_PORTS_ANALOGIQUE::Lecture_Port_Analogique() {
//    // read the value from analog inputs
//    //si analogReadResolution(12) , return integer value between 0-4095
//   for (int L_index = 0; L_index < NOMBRE_DE_PORT_ANALOGIQUE; L_index++) {
//
//        Valeurs_Analogique[L_index] = analogRead(Pins_Analogique[L_index]);
//    }
//
//#ifdef DEBUG_LECTURE_ANALOGIQUE
//    Affichage_Debug_Serial_Analogique();
//#endif
//
//}
//
////------------------------------------------------------------------------------
//
//int C_PORTS_ANALOGIQUE::Division_valeur(int P_Pin, int P_Diviseur) {
//    //cette fonction sert à obtenir une valeur plus petite 
//    //des entrées analogiques. par ex si resolution = 12bits,
//    //on a max 4095 . donc si P_Diviseur==4, value max == 1024
//    int L_Valeur_Pin = 0;
//    if (P_Pin > 0 && P_Pin <= NOMBRE_DE_PORT_ANALOGIQUE) {
//        L_Valeur_Pin=L_Valeur_Pin/P_Diviseur;
//    }
//    return L_Valeur_Pin;
//}
//
//int C_PORTS_ANALOGIQUE::Selectionner_Lire_Pin(int P_Pin) {
//    //cette fonction choisie un port analogique, le lit, 
//    //renvoi la valeur sur port série si debug
//
//    int L_Valeur_Pin = 0;
//    if (P_Pin > 0 && P_Pin <= NOMBRE_DE_PORT_ANALOGIQUE) {
//        L_Valeur_Pin = analogRead(Pins_Analogique[P_Pin]);
//
//
//#ifdef DEBUG_LECTURE_ANALOGIQUE
//        Serial << "Entree Analogique " << P_Pin << " = "
//                << L_Valeur_Pin << endl;
//
//        delay(2000);
//#endif
//    }
//
//    return L_Valeur_Pin;
//}
//
////------------------------------------------------------------------------------