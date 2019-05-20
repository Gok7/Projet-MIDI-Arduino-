/* 
 * File:   C_BARRE.cpp
 * Author: flopyy
 * 
 * Created on 29 janvier 2014, 13:07
 */
#include "Streaming.h"
#include "C_BARRE.h"
#include <stdlib.h> 
#include "EEPROMAnything.h"

#define DEBUG_EEPROM
//------------------------------------------------------------------------------

C_BARRE::C_BARRE() {

}

//------------------------------------------------------------------------------

void C_BARRE::Traitement_Commande_Pot(char* P_Chaine_Commandes) {

    //    char L_Chaine_Commandes[49] = "$1*1234*200*210@$2*1234*200*210@$3*1234*200*220@";

    printf("Splitting string \"%s\" into tokens:\n", P_Chaine_Commandes);
    L_Ptr_Valeur = strtok(P_Chaine_Commandes, "$*@");
    for (L_Index = 0; L_Ptr_Valeur != NULL; L_Index++) {
        L_Tempo[L_Index] = atoi(L_Ptr_Valeur);
        L_Ptr_Valeur = strtok(NULL, "$*@");
    }
    for (L_Index = 0; L_Index < 12; L_Index++) {
        printf("\n%d", L_Tempo[L_Index]);
    }
    for (L_Index_tempo = 1, L_index_parcour = 0; L_index_parcour < 3;
            L_index_parcour++, L_Index_tempo += 4) {
        L_Code[L_index_parcour] = L_Tempo[L_Index_tempo];
    }
    for (L_Index_tempo = 2, L_index_parcour = 0; L_index_parcour < 3;
            L_index_parcour++, L_Index_tempo += 4) {

        L_Valeur_Min[L_index_parcour] = L_Tempo[L_Index_tempo];
    }
    for (L_Index_tempo = 3, L_index_parcour = 0; L_index_parcour < 3;
            L_index_parcour++, L_Index_tempo += 4) {

        L_Valeur_Max[L_index_parcour] = L_Tempo[L_Index_tempo];
    }
    for (L_index_parcour = 0; L_index_parcour < 3; L_index_parcour++) {
        Serial << "\nCommande no " << L_index_parcour << " : \nCode : " << L_Code[L_index_parcour];
        Serial << "\nValeur min : " << L_Valeur_Min[L_index_parcour];
        Serial << "\nValeur max: " << L_Valeur_Max[L_index_parcour];
    }

}
    
void C_BARRE::Traitement_Chaine_Serie(char* P_Ptr_Chaine_Serie) {
    
    Serial << "\nDecoupage de la chaine suivante : \n "
            << P_Ptr_Chaine_Serie << "\nEn 4 partie:\n";
    L_Ptr_Valeur = strtok(P_Ptr_Chaine_Serie, "#");

    for (L_Index = 0; L_Ptr_Valeur != NULL; L_Index++) {
        strcpy(L_Commande[L_Index], L_Ptr_Valeur);
        Serial << (L_Commande[L_Index]) << endl;
        L_Ptr_Valeur = strtok(NULL, "#");
    }

    for (L_index_pot = 0; L_index_pot < 4; L_index_pot++) {
        //pour chaque pot on fait un traitement

        Serial << "\nSplitting string " << L_Commande[L_index_pot]
                << " into tokens:\n";

        L_Ptr_Valeur = strtok(L_Commande[L_index_pot], "$*@");
        for (L_Index = 0; L_Ptr_Valeur != NULL; L_Index++) {

            L_Tempo[L_Index] = atoi(L_Ptr_Valeur);
            Serial << L_Tempo[L_Index] << endl;
            L_Ptr_Valeur = strtok(NULL, "$*@");

            for (L_Index_tempo = 1, L_index_parcour = 0; L_index_parcour < 3;
                    L_index_parcour++, L_Index_tempo += 4) {
                L_Code[L_index_parcour] = L_Tempo[L_Index_tempo];

            }
            for (L_Index_tempo = 2, L_index_parcour = 0; L_index_parcour < 3;
                    L_index_parcour++, L_Index_tempo += 4) {
                L_Valeur_Min[L_index_parcour] = L_Tempo[L_Index_tempo];
            }

            for (L_Index_tempo = 3, L_index_parcour = 0; L_index_parcour < 3;
                    L_index_parcour++, L_Index_tempo += 4) {
                L_Valeur_Max[L_index_parcour] = L_Tempo[L_Index_tempo];
            }

        }

        for (L_index_parcour = 0; L_index_parcour < 3; L_index_parcour++) {
            Serial << "\nCommande no " << L_index_parcour << " : \nCode : " << L_Code[L_index_parcour];
            Serial << "\nValeur min : " << L_Valeur_Min[L_index_parcour];
            Serial << "\nValeur max: " << L_Valeur_Max[L_index_parcour];

        }
        
            Set_Barre_Commande_Pot_Universel(L_index_pot, 3,
                    L_Code[0], L_Valeur_Min[0], L_Valeur_Max[0],
                    L_Code[1], L_Valeur_Min[1], L_Valeur_Max[1],
                    L_Code[2], L_Valeur_Min[2], L_Valeur_Max[2]);
        
    }

    
}

//rappel : pas de newline
//envoyer @ 
//envoyer Debut_Paquet!#@ pour entrer en mode prog
//envoyer $1*10*0*50@$2*20*0*210@$3*30*200*210@#
//$1*40*100*110@$1*50*100*110@$1*60*100*110@#
//$1*70*090*100@$1*80*090*100@$1*90*090*100@#
//$1*100*200*250@$1*101*100*200@$1*102*50*200@#.
//
//sans espace entre et sans retour ligne pour tester la fonction
//------------------------------------------------------------------------------

void C_BARRE::Envoi_Config_Serie() {//OK

    int L_Addresse = 0;
    int L_Compteur = 0;
    byte L_byte_lu = 0;

    for (byte L_index = 0; L_index < NB_POT; L_index++) {

        while (L_Compteur != sizeof (La_Barre[0])) { //50 byte pour 1 potentiomètre
            L_byte_lu = EEPROM.read(L_Addresse); //lit EEPROM en commencant à 0
            Serial.print(L_byte_lu, HEX); //envoi via serie en Hexa
            L_Addresse++;
            L_Compteur++;
        }
        L_Compteur = 0;
    }
}

void C_BARRE::Init() {

    Set_Barre_Commande_Pot_0();
    Set_Barre_Commande_Pot_1();
    Set_Barre_Commande_Pot_2();
    Set_Barre_Commande_Pot_3();

}
//------------------------------------------------------------------------------

void C_BARRE::Ecrire_Barre_EEPROM() {
    //Ecrire_Barre_EEPROM(); 
    //    cette fonction doit être exécutée 
    //    une seule fois pour enregistrer la config

    Init();

#ifdef DEBUG_EEPROM
    Serial << "Debut ecriture EEPROM..." << endl;
#endif

    //ecrire La_Barre dans EEPROM
    int L_Adresse_EEPROM = 0;

    for (byte L_index = 0; L_index < NB_POT; L_index++) {

        L_Adresse_EEPROM = L_index * sizeof (La_Barre[0]);
        EEPROM_writeAnything(L_Adresse_EEPROM, La_Barre[L_index]);

#ifdef DEBUG_EEPROM
        Serial << "Adresse : " << L_Adresse_EEPROM << endl;
#endif
    }
#ifdef DEBUG_EEPROM
    Serial << "Fin ecriture EEPROM..." << endl;
#endif

}

//------------------------------------------------------------------------------
//lire EEPROM et affecter valeurs dans La_Barre_EEPROM

void C_BARRE::Lire_Barre_EEPROM() {

#ifdef DEBUG_EEPROM
    Serial << "Debut lecture EEPROM : " << endl;
#endif
    int L_Adresse_EEPROM = 0;

    for (byte L_index = 0; L_index < NB_POT; L_index++) {

        L_Adresse_EEPROM = L_index * sizeof (La_Barre[0]);
        EEPROM_readAnything(L_Adresse_EEPROM, La_Barre[L_index]);

#ifdef DEBUG_EEPROM
        Serial << "Adresse : " << L_Adresse_EEPROM << endl;
#endif
    }

#ifdef DEBUG_EEPROM
    Serial << "Fin lecture EEPROM..." << endl;
#endif

}
//------------------------------------------------------------------------------

void C_BARRE::Set_Barre_Commande_Pot_Universel(short P_Num_Pot, int P_Nb_Commande = 3,
        int P_Code1 = 0, int P_Valeur_Min1 = 0, int P_Valeur_Max1 = 0,
        int P_Code2 = 0, int P_Valeur_Min2 = 0, int P_Valeur_Max2 = 0,
        int P_Code3 = 0, int P_Valeur_Min3 = 0, int P_Valeur_Max3 = 0) {

    //cette fonction sera appellé 4 fois (4 Pot)
//3 commande possible pour chaque pot
    La_Barre[P_Num_Pot].Set_Pin_Pot(P_Num_Pot);
    La_Barre[P_Num_Pot].Controle_Set_Nombre_Commandes(P_Nb_Commande);
    La_Barre[P_Num_Pot].Controle_Set_Commande(0, P_Code1, P_Valeur_Min1, P_Valeur_Max1);
    La_Barre[P_Num_Pot].Controle_Set_Commande(1, P_Code2, P_Valeur_Min2, P_Valeur_Max2);
    La_Barre[P_Num_Pot].Controle_Set_Commande(2, P_Code3, P_Valeur_Min3, P_Valeur_Max3);

}

void C_BARRE::Set_Barre_Commande_Pot_0() {

    La_Barre[0].Set_Pin_Pot(0);
    La_Barre[0].Controle_Set_Nombre_Commandes(3);
    La_Barre[0].Controle_Set_Commande(0, 0, 0, 100);
    La_Barre[0].Controle_Set_Commande(1, 1, 0, 50);
    La_Barre[0].Controle_Set_Commande(2, 2, 25, 50);

}
//------------------------------------------------------------------------------

void C_BARRE::Set_Barre_Commande_Pot_1() {


    La_Barre[1].Set_Pin_Pot(1);
    La_Barre[1].Controle_Set_Nombre_Commandes(3);
    La_Barre[1].Controle_Set_Commande(0, 3, 0, 100);
    La_Barre[1].Controle_Set_Commande(1, 4, 0, 50);
    La_Barre[1].Controle_Set_Commande(2, 5, 25, 50);

}
//------------------------------------------------------------------------------

void C_BARRE::Set_Barre_Commande_Pot_2() {

    La_Barre[2].Set_Pin_Pot(2);
    La_Barre[2].Controle_Set_Nombre_Commandes(3);
    La_Barre[2].Controle_Set_Commande(0, 6, 0, 100);
    La_Barre[2].Controle_Set_Commande(1, 7, 0, 50);
    La_Barre[2].Controle_Set_Commande(2, 8, 25, 50);

}
//------------------------------------------------------------------------------

void C_BARRE::Set_Barre_Commande_Pot_3() {

    La_Barre[3].Set_Pin_Pot(3);
    La_Barre[3].Controle_Set_Nombre_Commandes(3);
    La_Barre[3].Controle_Set_Commande(0, 9, 0, 100);
    La_Barre[3].Controle_Set_Commande(1, 10, 0, 50);
    La_Barre[3].Controle_Set_Commande(2, 11, 25, 50);

}
//------------------------------------------------------------------------------

void C_BARRE::Run() {

    for (byte L_index = 0; L_index < NB_POT; L_index++) {

        La_Barre[L_index].Run();
    }
}
