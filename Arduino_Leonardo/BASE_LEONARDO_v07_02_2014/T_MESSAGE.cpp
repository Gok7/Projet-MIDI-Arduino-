/* 
 * File:   T_MESSAGE.cpp
 * Author: flopyy
 * 
 * Created on 16 janvier 2014, 16:52
 */

#include "T_MESSAGE.h"
#include "Streaming.h"

//------------------------------------------------------------------------------
void T_MESSAGE::Affiche_Debug()const{
    
    Serial << "Code_MIDI  = " <<Code_MIDI 
            << " Valeur  = " << Valeur << endl;
       
}
//------------------------------------------------------------------------------
