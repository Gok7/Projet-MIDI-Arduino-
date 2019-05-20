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
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/C_PORTS_ANALOGIQUE.o \
	${OBJECTDIR}/C_POTENTIOMETRE.o \
	${OBJECTDIR}/arduino/libraries/TFT/src/TFT.o \
	${OBJECTDIR}/arduino/libraries/TFT/src/utility/Adafruit_GFX.o \
	${OBJECTDIR}/arduino/libraries/TFT/src/utility/Adafruit_ST7735.o \
	${OBJECTDIR}/arduino/libraries/TFT/src/utility/glcdfont.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/IPAddress.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/Print.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/Reset.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/RingBuffer.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/Stream.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/UARTClass.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/USARTClass.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/USB/CDC.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/USB/HID.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/USB/USBCore.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/WInterrupts.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/WMath.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/WString.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/avr/dtostrf.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/cortex_handlers.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/cxxabi-compat.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/hooks.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/iar_calls_sam3.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/itoa.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/wiring.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/wiring_analog.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/wiring_digital.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/wiring_pulse.o \
	${OBJECTDIR}/arduino/sam/cores/arduino/wiring_shift.o \
	${OBJECTDIR}/arduino/sam/libraries/SPI/SPI.o \
	${OBJECTDIR}/arduino/sam/variants/arduino_due_x/variant.o \
	${OBJECTDIR}/main-Lecture_Port_Analogique.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/due_lecture_port_analogique.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/due_lecture_port_analogique.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/due_lecture_port_analogique ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/C_PORTS_ANALOGIQUE.o: C_PORTS_ANALOGIQUE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_PORTS_ANALOGIQUE.o C_PORTS_ANALOGIQUE.cpp

${OBJECTDIR}/C_POTENTIOMETRE.o: C_POTENTIOMETRE.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C_POTENTIOMETRE.o C_POTENTIOMETRE.cpp

${OBJECTDIR}/arduino/libraries/TFT/src/TFT.o: arduino/libraries/TFT/src/TFT.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/libraries/TFT/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/libraries/TFT/src/TFT.o arduino/libraries/TFT/src/TFT.cpp

${OBJECTDIR}/arduino/libraries/TFT/src/utility/Adafruit_GFX.o: arduino/libraries/TFT/src/utility/Adafruit_GFX.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/libraries/TFT/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/libraries/TFT/src/utility/Adafruit_GFX.o arduino/libraries/TFT/src/utility/Adafruit_GFX.cpp

${OBJECTDIR}/arduino/libraries/TFT/src/utility/Adafruit_ST7735.o: arduino/libraries/TFT/src/utility/Adafruit_ST7735.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/libraries/TFT/src/utility
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/libraries/TFT/src/utility/Adafruit_ST7735.o arduino/libraries/TFT/src/utility/Adafruit_ST7735.cpp

${OBJECTDIR}/arduino/libraries/TFT/src/utility/glcdfont.o: arduino/libraries/TFT/src/utility/glcdfont.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/libraries/TFT/src/utility
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/libraries/TFT/src/utility/glcdfont.o arduino/libraries/TFT/src/utility/glcdfont.c

${OBJECTDIR}/arduino/sam/cores/arduino/IPAddress.o: arduino/sam/cores/arduino/IPAddress.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/IPAddress.o arduino/sam/cores/arduino/IPAddress.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/Print.o: arduino/sam/cores/arduino/Print.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/Print.o arduino/sam/cores/arduino/Print.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/Reset.o: arduino/sam/cores/arduino/Reset.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/Reset.o arduino/sam/cores/arduino/Reset.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/RingBuffer.o: arduino/sam/cores/arduino/RingBuffer.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/RingBuffer.o arduino/sam/cores/arduino/RingBuffer.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/Stream.o: arduino/sam/cores/arduino/Stream.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/Stream.o arduino/sam/cores/arduino/Stream.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/UARTClass.o: arduino/sam/cores/arduino/UARTClass.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/UARTClass.o arduino/sam/cores/arduino/UARTClass.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/USARTClass.o: arduino/sam/cores/arduino/USARTClass.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/USARTClass.o arduino/sam/cores/arduino/USARTClass.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/USB/CDC.o: arduino/sam/cores/arduino/USB/CDC.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino/USB
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/USB/CDC.o arduino/sam/cores/arduino/USB/CDC.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/USB/HID.o: arduino/sam/cores/arduino/USB/HID.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino/USB
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/USB/HID.o arduino/sam/cores/arduino/USB/HID.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/USB/USBCore.o: arduino/sam/cores/arduino/USB/USBCore.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino/USB
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/USB/USBCore.o arduino/sam/cores/arduino/USB/USBCore.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/WInterrupts.o: arduino/sam/cores/arduino/WInterrupts.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/WInterrupts.o arduino/sam/cores/arduino/WInterrupts.c

${OBJECTDIR}/arduino/sam/cores/arduino/WMath.o: arduino/sam/cores/arduino/WMath.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/WMath.o arduino/sam/cores/arduino/WMath.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/WString.o: arduino/sam/cores/arduino/WString.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/WString.o arduino/sam/cores/arduino/WString.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/avr/dtostrf.o: arduino/sam/cores/arduino/avr/dtostrf.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino/avr
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/avr/dtostrf.o arduino/sam/cores/arduino/avr/dtostrf.c

${OBJECTDIR}/arduino/sam/cores/arduino/cortex_handlers.o: arduino/sam/cores/arduino/cortex_handlers.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/cortex_handlers.o arduino/sam/cores/arduino/cortex_handlers.c

${OBJECTDIR}/arduino/sam/cores/arduino/cxxabi-compat.o: arduino/sam/cores/arduino/cxxabi-compat.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/cxxabi-compat.o arduino/sam/cores/arduino/cxxabi-compat.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/hooks.o: arduino/sam/cores/arduino/hooks.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/hooks.o arduino/sam/cores/arduino/hooks.c

${OBJECTDIR}/arduino/sam/cores/arduino/iar_calls_sam3.o: arduino/sam/cores/arduino/iar_calls_sam3.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/iar_calls_sam3.o arduino/sam/cores/arduino/iar_calls_sam3.c

${OBJECTDIR}/arduino/sam/cores/arduino/itoa.o: arduino/sam/cores/arduino/itoa.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/itoa.o arduino/sam/cores/arduino/itoa.c

${OBJECTDIR}/arduino/sam/cores/arduino/wiring.o: arduino/sam/cores/arduino/wiring.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/wiring.o arduino/sam/cores/arduino/wiring.c

${OBJECTDIR}/arduino/sam/cores/arduino/wiring_analog.o: arduino/sam/cores/arduino/wiring_analog.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/wiring_analog.o arduino/sam/cores/arduino/wiring_analog.c

${OBJECTDIR}/arduino/sam/cores/arduino/wiring_digital.o: arduino/sam/cores/arduino/wiring_digital.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/wiring_digital.o arduino/sam/cores/arduino/wiring_digital.c

${OBJECTDIR}/arduino/sam/cores/arduino/wiring_pulse.o: arduino/sam/cores/arduino/wiring_pulse.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/wiring_pulse.o arduino/sam/cores/arduino/wiring_pulse.cpp

${OBJECTDIR}/arduino/sam/cores/arduino/wiring_shift.o: arduino/sam/cores/arduino/wiring_shift.c 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/cores/arduino
	${RM} "$@.d"
	$(COMPILE.c) -g -IC/Arduino/hardware/tools/avr/avr/include -IC/Arduino/hardware/arduino/avr/cores/arduino -IC/Arduino/hardware/arduino/avr/variants/yun -IC/Arduino/hardware/arduino/avr/cores/arduino/avr-libc -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/cores/arduino/wiring_shift.o arduino/sam/cores/arduino/wiring_shift.c

${OBJECTDIR}/arduino/sam/libraries/SPI/SPI.o: arduino/sam/libraries/SPI/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/libraries/SPI
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/libraries/SPI/SPI.o arduino/sam/libraries/SPI/SPI.cpp

${OBJECTDIR}/arduino/sam/variants/arduino_due_x/variant.o: arduino/sam/variants/arduino_due_x/variant.cpp 
	${MKDIR} -p ${OBJECTDIR}/arduino/sam/variants/arduino_due_x
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/arduino/sam/variants/arduino_due_x/variant.o arduino/sam/variants/arduino_due_x/variant.cpp

${OBJECTDIR}/main-Lecture_Port_Analogique.o: main-Lecture_Port_Analogique.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main-Lecture_Port_Analogique.o main-Lecture_Port_Analogique.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/due_lecture_port_analogique.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
