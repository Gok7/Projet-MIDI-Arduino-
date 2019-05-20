/* 
 * File:   C_POTENTIOMETRE.h
 * Author: flopyy
 *
 * Created on 15 janvier 2014, 15:13
 */

#ifndef C_POTENTIOMETRE_H
#define	C_POTENTIOMETRE_H
#include "Streaming.h"

#define NOMBRE_DE_POT 4 

class C_POTENTIOMETRE  {
    
public:
    C_POTENTIOMETRE(int P_Pin=0,float P_Tension_Fourni=5);
    float Get_Voltage();
    float Get_Pourcentage();
    int Get_Valeur_Brut();
    
protected:
   
    int Pin_Pot;
    int Valeur_Pot;
    float Tension_Fourni;
    float Coef_Pourcentage;
    float Coef_Voltage;
};

#endif	/* C_POTENTIOMETRE_H */