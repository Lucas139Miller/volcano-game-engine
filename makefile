#VARIABLES:
CC = g++
#EXECUTABLE NAME
TARGET = volcano.exe

#FOLDERS
SRC = src
INCLUDE = include
BUILD = build
BIN = bin
#JSON = ${INCLUDE}/nlohmann

all: setup ${BIN}/${TARGET}

#LINKING
${BIN}/${TARGET}: ${BUILD}/main.o
	${CC} -fsanitize=address -g -O0 ${BUILD}/*.o -o ${BIN}/${TARGET}

#COMPILING
${BUILD}/main.o : ${SRC}/main.cpp
	${CC} -c -I${INCLUDE} -fsanitize=address -g -O0 ${SRC}/main.cpp -o ${BUILD}/main.o

#PRE CONFIGURATION
setup:
	mkdir -p ${BUILD}
	mkdir -p ${BIN}


#g++ -fsanitize=address -g -O1 main.cpp -o programa