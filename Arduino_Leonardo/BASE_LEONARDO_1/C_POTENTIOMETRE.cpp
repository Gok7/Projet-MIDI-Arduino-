// Mapping of analog pins as digital I/O
// A6-A11 share with digital pins
//static const uint8_t A0 = 18;
//static const uint8_t A1 = 19;
//static const uint8_t A2 = 20;
//static const uint8_t A3 = 21;

#include "C_POTENTIOMETRE.h"
#define DEBUG_LECTURE_POT

#define RESOLUTION 10 //resolution par defaut des entrées analogiques

//------------------------------------------------------------------------------

C_POTENTIOMETRE::C_POTENTIOMETRE(int P_Pin,float P_Tension_Fourni) {

    Coef_Pourcentage=pow(2, RESOLUTION)*0.01f;

    Tension_Fourni = P_Tension_Fourni; //pour adapter calcul en fonction de la tension
    Coef_Voltage=(Tension_Fourni / pow(2, RESOLUTION));
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


