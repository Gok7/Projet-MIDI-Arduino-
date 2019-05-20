/* 
 * File:   C_BARRE.h
 * Author: flopyy
 *
 * Created on 29 janvier 2014, 13:07
 */

#ifndef C_BARRE_H
#define	C_BARRE_H
#include "C_CONTROLE.h"
#include <string.h>

#define NB_POT 4

class C_BARRE {
public:

    C_BARRE();

    void Init();
    void Ecrire_Barre_EEPROM();
    void Lire_Barre_EEPROM();

    void Set_Barre_Commande_Pot_0();
    void Set_Barre_Commande_Pot_1();
    void Set_Barre_Commande_Pot_2();
    void Set_Barre_Commande_Pot_3();

    void Set_Barre_Commande_Pot_Universel(short P_Num_Pot,int P_Nb_Commande,
        int P_Code1, int P_Valeur_Min1, int P_Valeur_Max1,
        int P_Code2, int P_Valeur_Min2, int P_Valeur_Max2,
        int P_Code3, int P_Valeur_Min3, int P_Valeur_Max3) ;

    void Envoi_Config_Serie();
    void Traitement_Chaine_Serie(char* P_Ptr_Chaine_Serie);
    void Traitement_Commande_Pot(char* P_Chaine_Commandes);

    void Run();

protected:

    C_CONTROLE La_Barre[NB_POT];
    char *L_Ptr_Valeur;
    int L_Tempo[12];
    char L_Commande[4][50];
    int L_Index;
    int L_index_Commande ;
    int L_Num_Pot ;
    int L_Index_tempo;
    int L_index_parcour;
    int L_index_pot;
    int L_Code[3];
    int L_Valeur_Min[3];
    int L_Valeur_Max[3];

};

#endif	/* C_BARRE_H */

