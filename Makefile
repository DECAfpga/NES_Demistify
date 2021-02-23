BOARD=

all: submodules firmware init compile

submodules: DeMiSTify/Makefile

DeMiSTify/Makefile:
	git submodule update --init --recursive

firmware:
	make -C DeMiSTify firmware

init:
	make -C DeMiSTify PROJECTS=nes BOARD=$(BOARD) init 

compile:
	make -C DeMiSTify PROJECTS=nes BOARD=$(BOARD) compile

clean:
	make -C DeMiSTify PROJECTS=nes BOARD=$(BOARD) clean

