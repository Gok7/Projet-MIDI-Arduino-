/* 
 * File:   T_MESSAGE.h
 * Author: flopyy
 *
 * Created on 16 janvier 2014, 16:52
 */

#ifndef T_MESSAGE_H
#define	T_MESSAGE_H

struct T_MESSAGE {

    void Affiche_Debug()const;
    int Get_Code_MIDI(){ return Code_MIDI;}
    void Set_Code_MIDI(int P_Code_MIDI){Code_MIDI=P_Code_MIDI;}
    int Get_Valeur_MIDI(){ return Valeur;}
    void Set_Valeur_MIDI(int P_Valeur){Valeur=P_Valeur;}
    
protected:
    int Code_MIDI;
    int Valeur;
};
#endif	/* T_MESSAGE_H */

