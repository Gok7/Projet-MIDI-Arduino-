///* 
// * File:   C_EEPROM.cpp
// * Author: Captain_Phillips
// * 
// * Created on 13 février 2014, 17:26
// */
//
//#include "C_EEPROM.h"
//
//C_EEPROM::C_EEPROM() {
//    short int Addresse_EEPROM = 0;
//}
//
//void C_EEPROM::Clean_EEPROM() {
//    // write a 0 to all 512 bytes of the EEPROM
//    for (int i = 0; i < TAILLE_EEPROM; i++)
//        EEPROM.write(i, 0);
//}
//
//void C_EEPROM::Ecrire_EEPROM(uint8_t P_Valeur) {
//
//    //An EEPROM write takes 3.3 ms to complete. The EEPROM memory has a specified life
//    //of 100,000 write/erase cycles, so you may need to be careful about how often you 
//    //write to it. 
//
//    if (Addresse_EEPROM > 0 && Addresse_EEPROM < TAILLE_EEPROM) {
//        EEPROM.write(Addresse_EEPROM, P_Valeur);
//        Addresse_EEPROM = Addresse_EEPROM + 1; // advance to the next address.
//    } else {
//        Serial << "EEPROM PLEIN" << endl;
//    }
//}
//
//void C_EEPROM::Lire_EEPROM() {
//    // read a byte from the current address of the EEPROM
//    if (Addresse_EEPROM > 0 && Addresse_EEPROM < TAILLE_EEPROM) {
//        Valeur = EEPROM.read(Addresse_EEPROM);
//
//        Addresse_EEPROM = Addresse_EEPROM + 1;
//    }
//}
