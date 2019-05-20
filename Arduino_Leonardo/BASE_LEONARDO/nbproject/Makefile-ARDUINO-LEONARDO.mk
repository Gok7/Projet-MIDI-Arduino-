#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=avr-gcc
CCC=avr-g++
CXX=avr-g++
FC=gfortran
AS=avr-as.exe

# Macros
CND_PLATFORM=Arduino-Windows
CND_DLIB_EXT=dll
CND_CONF=ARDUINO-LEONARDO
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Arduino/avr/cores/arduino/CDC.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/HID.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/HardwareSerial.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/IPAddress.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/Print.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/Stream.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/Tone.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/USBCore.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/WInterrupts.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/WMath.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc/malloc.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc/realloc.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/hooks.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/new.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/wiring.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_analog.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_digital.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_pulse.o \
	${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_shift.o \
	${OBJECTDIR}/Arduino/avr/libraries/SPI/SPI.o \
	${OBJECTDIR}/Arduino/libraries/SD/src/SD.o \
	${OBJECTDIR}/Arduino/libraries/SD/src/utility/Sd2Card.o \
	${OBJECTDIR}/Arduino/libraries/SD/src/utility/SdFile.o \
	${OBJECTDIR}/Arduino/libraries/SD/src/utility/SdVolume.o \
	${OBJECTDIR}/Arduino/libraries/TFT/src/TFT.o \
	${OBJECTDIR}/Arduino/libraries/TFT/src/utility/Adafruit_GFX.o \
	${OBJECTDIR}/Arduino/libraries/TFT/src/utility/Adafruit_ST7735.o \
	${OBJECTDIR}/C_AFFICHEUR.o \
	${OBJECTDIR}/C_BARRE.o \
	${OBJECTDIR}/C_COMMANDE_MIDI.o \
	${OBJECTDIR}/C_CONTROLE.o \
	${OBJECTDIR}/C_EEPROM.o \
	${OBJECTDIR}/C_LISTE_COMMANDES.o \
	${OBJECTDIR}/C_POTENTIOMETRE.o \
	${OBJECTDIR}/C_SERIE.o \
	${OBJECTDIR}/EEPROM.o \
	${OBJECTDIR}/LiquidCrystal.o \
	${OBJECTDIR}/Main.o \
	${OBJECTDIR}/T_MESSAGE.o


# C Compiler Flags
CFLAGS=-ffunction-sections -fdata-sections -MMD -mmcu=atmega32u4 -Os

# CC Compiler Flags
CCFLAGS=-fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega32u4 -Os
CXXFLAGS=-fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega32u4 -Os

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/FINAL.ELF.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/FINAL.ELF.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/FINAL.ELF ${OBJECTFILES} ${LDLIBSOPTIONS} -Os -Wl,--gc-sections -mmcu=atmega32u4 -L ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/FINAL.tmp -lm

${OBJECTDIR}/Arduino/avr/cores/arduino/CDC.o: Arduino/avr/cores/arduino/CDC.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/CDC.o Arduino/avr/cores/arduino/CDC.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/HID.o: Arduino/avr/cores/arduino/HID.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/HID.o Arduino/avr/cores/arduino/HID.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/HardwareSerial.o: Arduino/avr/cores/arduino/HardwareSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/HardwareSerial.o Arduino/avr/cores/arduino/HardwareSerial.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/IPAddress.o: Arduino/avr/cores/arduino/IPAddress.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/IPAddress.o Arduino/avr/cores/arduino/IPAddress.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/Print.o: Arduino/avr/cores/arduino/Print.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/Print.o Arduino/avr/cores/arduino/Print.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/Stream.o: Arduino/avr/cores/arduino/Stream.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/Stream.o Arduino/avr/cores/arduino/Stream.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/Tone.o: Arduino/avr/cores/arduino/Tone.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/Tone.o Arduino/avr/cores/arduino/Tone.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/USBCore.o: Arduino/avr/cores/arduino/USBCore.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/USBCore.o Arduino/avr/cores/arduino/USBCore.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/WInterrupts.o: Arduino/avr/cores/arduino/WInterrupts.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/WInterrupts.o Arduino/avr/cores/arduino/WInterrupts.c

${OBJECTDIR}/Arduino/avr/cores/arduino/WMath.o: Arduino/avr/cores/arduino/WMath.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/WMath.o Arduino/avr/cores/arduino/WMath.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc/malloc.o: Arduino/avr/cores/arduino/avr-libc/malloc.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc/malloc.o Arduino/avr/cores/arduino/avr-libc/malloc.c

${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc/realloc.o: Arduino/avr/cores/arduino/avr-libc/realloc.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/avr-libc/realloc.o Arduino/avr/cores/arduino/avr-libc/realloc.c

${OBJECTDIR}/Arduino/avr/cores/arduino/hooks.o: Arduino/avr/cores/arduino/hooks.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/hooks.o Arduino/avr/cores/arduino/hooks.c

${OBJECTDIR}/Arduino/avr/cores/arduino/new.o: Arduino/avr/cores/arduino/new.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/new.o Arduino/avr/cores/arduino/new.cpp

${OBJECTDIR}/Arduino/avr/cores/arduino/wiring.o: Arduino/avr/cores/arduino/wiring.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/wiring.o Arduino/avr/cores/arduino/wiring.c

${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_analog.o: Arduino/avr/cores/arduino/wiring_analog.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_analog.o Arduino/avr/cores/arduino/wiring_analog.c

${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_digital.o: Arduino/avr/cores/arduino/wiring_digital.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_digital.o Arduino/avr/cores/arduino/wiring_digital.c

${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_pulse.o: Arduino/avr/cores/arduino/wiring_pulse.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_pulse.o Arduino/avr/cores/arduino/wiring_pulse.c

${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_shift.o: Arduino/avr/cores/arduino/wiring_shift.c 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/cores/arduino/wiring_shift.o Arduino/avr/cores/arduino/wiring_shift.c

${OBJECTDIR}/Arduino/avr/libraries/SPI/SPI.o: Arduino/avr/libraries/SPI/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/avr/libraries/SPI
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/avr/libraries/SPI/SPI.o Arduino/avr/libraries/SPI/SPI.cpp

${OBJECTDIR}/Arduino/libraries/SD/src/SD.o: Arduino/libraries/SD/src/SD.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/SD/src
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/SD/src/SD.o Arduino/libraries/SD/src/SD.cpp

${OBJECTDIR}/Arduino/libraries/SD/src/utility/Sd2Card.o: Arduino/libraries/SD/src/utility/Sd2Card.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/SD/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/SD/src/utility/Sd2Card.o Arduino/libraries/SD/src/utility/Sd2Card.cpp

${OBJECTDIR}/Arduino/libraries/SD/src/utility/SdFile.o: Arduino/libraries/SD/src/utility/SdFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/SD/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/SD/src/utility/SdFile.o Arduino/libraries/SD/src/utility/SdFile.cpp

${OBJECTDIR}/Arduino/libraries/SD/src/utility/SdVolume.o: Arduino/libraries/SD/src/utility/SdVolume.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/SD/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/SD/src/utility/SdVolume.o Arduino/libraries/SD/src/utility/SdVolume.cpp

${OBJECTDIR}/Arduino/libraries/TFT/src/TFT.o: Arduino/libraries/TFT/src/TFT.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/TFT/src
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/TFT/src/TFT.o Arduino/libraries/TFT/src/TFT.cpp

${OBJECTDIR}/Arduino/libraries/TFT/src/utility/Adafruit_GFX.o: Arduino/libraries/TFT/src/utility/Adafruit_GFX.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/TFT/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/TFT/src/utility/Adafruit_GFX.o Arduino/libraries/TFT/src/utility/Adafruit_GFX.cpp

${OBJECTDIR}/Arduino/libraries/TFT/src/utility/Adafruit_ST7735.o: Arduino/libraries/TFT/src/utility/Adafruit_ST7735.cpp 
	${MKDIR} -p ${OBJECTDIR}/Arduino/libraries/TFT/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arduino/libraries/TFT/src/utility/Adafruit_ST7735.o Arduino/libraries/TFT/src/utility/Adafruit_ST7735.cpp

${OBJECTDIR}/C_AFFICHEUR.o: C_AFFICHEUR.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_AFFICHEUR.o C_AFFICHEUR.cpp

${OBJECTDIR}/C_BARRE.o: C_BARRE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_BARRE.o C_BARRE.cpp

${OBJECTDIR}/C_COMMANDE_MIDI.o: C_COMMANDE_MIDI.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_COMMANDE_MIDI.o C_COMMANDE_MIDI.cpp

${OBJECTDIR}/C_CONTROLE.o: C_CONTROLE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_CONTROLE.o C_CONTROLE.cpp

${OBJECTDIR}/C_EEPROM.o: C_EEPROM.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_EEPROM.o C_EEPROM.cpp

${OBJECTDIR}/C_LISTE_COMMANDES.o: C_LISTE_COMMANDES.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_LISTE_COMMANDES.o C_LISTE_COMMANDES.cpp

${OBJECTDIR}/C_POTENTIOMETRE.o: C_POTENTIOMETRE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_POTENTIOMETRE.o C_POTENTIOMETRE.cpp

${OBJECTDIR}/C_SERIE.o: C_SERIE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_SERIE.o C_SERIE.cpp

${OBJECTDIR}/EEPROM.o: EEPROM.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/EEPROM.o EEPROM.cpp

${OBJECTDIR}/LiquidCrystal.o: LiquidCrystal.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LiquidCrystal.o LiquidCrystal.cpp

${OBJECTDIR}/Main.o: Main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Main.o Main.cpp

${OBJECTDIR}/T_MESSAGE.o: T_MESSAGE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -DARDUINO=155 -DARDUINO_ARCH_AVR -DARDUINO_AVR_LEONARDO -DF_CPU=16000000L -DUSB_PID=0x8036 -DUSB_PRODUCT=\"Arduino\ Leonardo\" -DUSB_VID=0x2341 -IArduino/avr/cores/arduino -IArduino/avr/variants/yun -IArduino/avr/cores/arduino/avr-libc -IArduino/avr/libraries/SPI -IArduino/libraries/TFT/src -IArduino/libraries/SD/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/T_MESSAGE.o T_MESSAGE.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/FINAL.ELF.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
