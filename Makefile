CC=rasm
EXE=$(HOME)/Downloads/cpcec-20220412/cpcec


.PHONY: build
build: 
	$(CC) Cocarde.asm -eo

.PHONY: exec
exec: build
	$(EXE) -m3 -g3 rasmoutput.sna

.PHONY: list
list: 
	dsk -dsk martine-animate.dsk -list
