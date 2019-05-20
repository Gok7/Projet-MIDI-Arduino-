/*
 * Analog pins
 
static const uint8_t A0  = 54;
static const uint8_t A1  = 55;
static const uint8_t A2  = 56;
static const uint8_t A3  = 57;
 */

#include "C_POTENTIOMETRE.h"
#define DEBUG_LECTURE_POT

//------------------------------------------------------------------------------

C_POTENTIOMETRE::C_POTENTIOMETRE(int P_Pin, int P_resolution, float P_Tension_Fourni) {

    Resolution = P_resolution;
    analogReadResolution(Resolution); //config res 
    Coef_Pourcentage=pow(2, Resolution)*0.01f;

    Tension_Fourni = P_Tension_Fourni; //pour adapter calcul en fonction de la tension
    Coef_Voltage=(Tension_Fourni / pow(2, Resolution));
    if (P_Pin >= 0 && P_Pin < NOMBRE_DE_POT) {
        Pin_Pot = P_Pin + A0;
        Valeur_Pot = 0;
        pinMode(Pin_Pot, INPUT); //configuration du port analogique, en entrée.
    }
}

//------------------------------------------------------------------------------

float C_POTENTIOMETRE::Get_Pourcentage() {

    Valeur_Pot = analogRead(Pin_Pot);
    float L_Pourcentage = Valeur_Pot / Coef_Pourcentage;

#ifdef DEBUG_LECTURE_POT
    Serial << "Entree Pot Pourcentage " << (Pin_Pot - A0) << " = " << L_Pourcentage << endl;

#endif
    return L_Pourcentage;
}
//------------------------------------------------------------------------------

int C_POTENTIOMETRE::Get_Valeur_Brut() {
    
    Valeur_Pot = analogRead(Pin_Pot);

#ifdef DEBUG_LECTURE_POT
    Serial << "Entree Pot Valeur_Brut " << (Pin_Pot - A0) << " = " << Valeur_Pot << endl;

#endif
    return Valeur_Pot;

}
//------------------------------------------------------------------------------

float C_POTENTIOMETRE::Get_Voltage() {

    Valeur_Pot = analogRead(Pin_Pot);

    float L_voltage = Valeur_Pot * Coef_Voltage ;

#ifdef DEBUG_LECTURE_POT
    Serial << "Entree Pot Voltage " << (Pin_Pot - A0) << " = " << L_voltage << endl;

#endif
    return L_voltage;
}
//------------------------------------------------------------------------------


