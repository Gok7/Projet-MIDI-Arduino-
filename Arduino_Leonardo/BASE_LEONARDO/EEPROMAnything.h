/* 
 * File:   EEPROMAnything.h
 * Author: Captain_Phillips
 *
 * Created on 20 février 2014, 08:54
 */

#ifndef EEPROMANYTHING_H
#define	EEPROMANYTHING_H

#include "EEPROM.h"
#include <Arduino.h>  // for type definitions

template <class T> int EEPROM_writeAnything(int ee, const T& value)
{
    const byte* p = (const byte*)(const void*)&value;
    unsigned int i;
    for (i = 0; i < sizeof(value); i++)
          EEPROM.write(ee++, *p++);
    return i;
}

template <class T> int EEPROM_readAnything(int ee, T& value)
{
    byte* p = (byte*)(void*)&value;
    unsigned int i;
    for (i = 0; i < sizeof(value); i++)
          *p++ = EEPROM.read(ee++);
    return i;
}

#endif	/* EEPROMANYTHING_H */
