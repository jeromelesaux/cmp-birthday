CC=rasm
EXE=$(HOME)/Downloads/cpcec-20220412/cpcec


.PHONY: build
build: 
	$(CC) main.asm -eo

.PHONY: exec
exec: build
	$(EXE) -m3 -g3 sid-f-3.dsk

.PHONY: list
list: 
	dsk -dsk sid-f-3.dsk -list
