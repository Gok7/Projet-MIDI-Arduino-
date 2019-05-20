/* 
 * File:   C_SERIE.h
 * Author: Captain_Phillips
 *
 * Created on 9 avril 2014, 15:36
 */

#ifndef C_SERIE_H
#define	C_SERIE_H
#include <string.h>
#include <Arduino.h> 

class C_SERIE {
public:
    C_SERIE();
    virtual ~C_SERIE();

    bool Verif_Mode_Prog();
    char* Lecture_Serie_Global();

private:
    
    int Nb_Car_Max_Chaine_Lu;
    char Chaine_Lu[15];
    int Index_Verif;
    int Index_Lecture_Global;
    char Char_Lu_Serie;
    char Chaine_Debut_Paquet[15];
    char Char_Fin_Paquet;
    char Char_Fin_Mode_Prog;
    bool Mode_Prog ;
    int Taille_Buffer_Global;
    char Buffer_Global[200];
    
    

};

#endif	/* C_SERIE_H */

