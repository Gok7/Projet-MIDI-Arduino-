#define USBCON
#include <Arduino.h> 
#include "Streaming.h"
#include "C_COMMANDE_MIDI.h"
#include "C_POTENTIOMETRE.h"
#include "C_CONTROLE.h"
#include "LiquidCrystal.h"
#include "C_BARRE.h"
#include "C_SERIE.h"
#define Pin_Interrupteur 10 //sert à choisir entre mode prog et mode normal


//------------------------------------------------------------------------------
//16x2 LCD display.
//The circuit:
// * LCD RS pin to digital pin 12   
// * LCD Enable pin to digital pin 11
// * LCD D4 pin to digital pin 5
// * LCD D5 pin to digital pin 4
// * LCD D6 pin to digital pin 3
// * LCD D7 pin to digital pin 2
// * LCD R/W pin to ground
// * 10K resistor:
// * ends to +5V and ground
// * wiper to LCD VO pin (pin 3)
// initialize the library with the numbers of the interface pins


//------------------------------------------------------------------------------
// initialize the library with the numbers of the interface pins
#define DEBUG_SERIAL
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
char * L_Ptr_Valeur;
char *L_Ptr_Chaine_entiere;
int L_Index;
int L_Tempo[12];
int L_Code[3];
int L_Valeur_Min[3];
int L_Valeur_Max[3];
int L_Index_tempo;
int L_index_parcour;
bool L_Etat_Interrupteur;
char Char_Lu_Serie;
bool Mode_Prog = true;
char Char_Fin_Paquet = '.';
char Buffer_Global[200];
int Index_Lecture_Global = 0;
char L_Commande[4][50];

void Initialisation() {

    init();
    USBDevice.attach();
    delay(1);
    Serial.begin(9600);
    pinMode(Pin_Interrupteur, INPUT);
}
//------------------------------------------------------------------------------

void setup_LCD() {

    // set up the LCD's number of columns and rows:
    lcd.begin(16, 2);
    lcd.print("Start");
    lcd.display();

}

void Traitement_Commande_Pot(short P_Index_Pot,char* P_Chaine_Commandes,C_BARRE &P_Barre) {

    Serial<<"Splitting string "<<endl;
    Serial<<P_Chaine_Commandes<<endl;
    Serial<<" into tokens:"<<endl;
    
    L_Ptr_Valeur = strtok(P_Chaine_Commandes, "$*@");
    for (L_Index = 0; L_Ptr_Valeur != NULL; L_Index++) {
        L_Tempo[L_Index] = atoi(L_Ptr_Valeur);
        L_Ptr_Valeur = strtok(NULL, "$*@");
    }
    for (L_Index = 0; L_Index < 12; L_Index++) {
        Serial<<L_Tempo[L_Index]<<endl;
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
    
    P_Barre.Set_Barre_Commande_Pot_Universel(P_Index_Pot, 3,
            L_Code[0], L_Valeur_Min[0], L_Valeur_Max[0],
            L_Code[1], L_Valeur_Min[1], L_Valeur_Max[1],
            L_Code[2], L_Valeur_Min[2], L_Valeur_Max[2]);
    
}


void Traitement_Chaine_Entiere(char* P_Chaine_Entiere, C_BARRE &P_Barre) {

    short L_Index_Pot = 0;
    char *L_Ptr_Chaine_entiere;

    Serial << "\nDecoupage de la chaine suivante : \n "
            << P_Chaine_Entiere << "\nEn 4 partie:\n";

    L_Ptr_Chaine_entiere = strtok(P_Chaine_Entiere, "#");

    for (L_Index_Pot=0;L_Ptr_Chaine_entiere != NULL;L_Index_Pot++) {

        Serial << "\nL_Index_Pot= " << L_Index_Pot << endl;
        strcpy(L_Commande[L_Index_Pot], L_Ptr_Chaine_entiere);
        Serial << L_Ptr_Chaine_entiere << endl;
        L_Ptr_Chaine_entiere = strtok(NULL, "#");

    }
    for (L_Index_Pot = 0; L_Index_Pot < 4; L_Index_Pot++) {
        Traitement_Commande_Pot(L_Index_Pot, L_Commande[L_Index_Pot], P_Barre);
    }

}
//------------------------------------------------------------------------------

int main(void) {

    Initialisation();
    setup_LCD();
    C_BARRE L_La_barre;
    L_La_barre.Init(); //init la barre avec valeur par défaut
    
    while (1) {

        L_Etat_Interrupteur = digitalRead(Pin_Interrupteur);

        if (L_Etat_Interrupteur == HIGH) {//si interrupteur sur +5V

            lcd.clear();
            lcd.print("Programming mode");

            while (L_Etat_Interrupteur == HIGH) {

                Char_Lu_Serie = 0;
                while (Mode_Prog == true) {

                    if (Serial.available()) {
                        Char_Lu_Serie = Serial.read();

                        if (Char_Lu_Serie == Char_Fin_Paquet) {

                            Buffer_Global[Index_Lecture_Global] = 0;
                            Index_Lecture_Global = 0;
                            Char_Lu_Serie = 0;
                            Serial.print("\nReception Buffer global : \n");
                            Serial.print(Buffer_Global);
                            Mode_Prog = false;
                        } else { //si pas la fin
                            Buffer_Global[Index_Lecture_Global] = Char_Lu_Serie;
                            Index_Lecture_Global++;
                        }
                    }
                }
                Traitement_Chaine_Entiere(Buffer_Global,L_La_barre);

                Serial << "TraitementOK";
                delay(5000);
                 L_Etat_Interrupteur = digitalRead(Pin_Interrupteur);
                 if(L_Etat_Interrupteur==HIGH){Mode_Prog = true;}
            }
           
        } 
        
        else {

            lcd.clear();
            lcd.print("Mode normal");
            L_La_barre.Run();
        }
        delay(500);
    }
    return 1;
}

//------------------------------------------------------------------------------



