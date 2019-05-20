/* 
 * File:   C_BARRE.h
 * Author: flopyy
 *
 * Created on 29 janvier 2014, 13:07
 */

#ifndef C_BARRE_H
#define	C_BARRE_H
#include "C_CONTROLE.h"

class C_BARRE {
public:
    C_BARRE();
    C_BARRE(const C_BARRE& orig);
    virtual ~C_BARRE();
    
protected:
    
    C_CONTROLE La_Barre[4];

};

#endif	/* C_BARRE_H */

