; Généré par ConvImgCpcV 1.0.8294.25094 - 16/09/2022 - le 28/09/2022 (10 57 35)
; Mode écran - Mode 0
; Taille (nbColsxNbLignes) 96x272

BUILDSNA
SETCPC 5
BANKSET 0
	ORG	#6850

pri equ #6800
sscr equ pri+4
splt equ pri+2
FontMem equ #4000


start
include "cocarde_img.asm"

orig:	RUN	$


_StartDepack:
	DI

	//ld hl,#C9FB
	//ld (#38),hl

	LD	BC,#BC11
	LD	HL,UnlockAsic
Unlock:
	LD	A,(HL)
	OUT	(C),A
	INC	HL
	DEC	C
	JR	NZ,Unlock
	LD	BC,#7FA0
	LD	A,(Palette)
	OUT	(C),A
	OUT	(C),C
	LD	BC,#7FB8
	OUT	(C),C
	LD	HL,Palette+1
	LD	DE,#6400
	LD	BC,#0022
	LDIR
	LD	BC,#7FA0
	OUT	(C),C
	LD	HL,#3032
	LD	BC,#BC01
	OUT	(C),C
	INC	B
	OUT	(C),H
	DEC	B
	INC	C
	OUT	(C),C
	INC	B
	OUT	(C),L
	LD	HL,#2223
	LD	BC,#BC06
	OUT	(C),C
	INC	B
	OUT	(C),H
	DEC	B
	INC	C
	OUT	(C),C
	INC	B
	OUT	(C),L
	LD	BC,#BC0C
	OUT	(C),C
	INC	B
	INC	C
	OUT	(C),C

	; loading font palette 
	call asicOn
	call copySpriteHardPalette
	call asicOff

	; ; font loading 
	; ; change bank 
	; ;brk
	; ld bc, #7fc4 ; bank 6 in #4000
	; out (c),c
	; LD HL,Font
	; LD DE,FontMem
	; LD BC,#4000
	; LDIR

	; ;brk
	; ; return to orginal bank
	; ld bc, #7fc0 
	; out (c),c

	; loading image 
	LD	HL,ImageCmp
	LD	DE,#0200
	CALL	Depack
	
	
	EI


; comment iterer sur tous les sprites ? 

main
//	call TstSpace ; test des touches 
	//call xvbl
; loop0 ld a,#ff : dec a: xor a : jr z,continue0 : ld (loop0+1),a : jr dontOndule
; continue0 ld a,#ff : ld (loop0+1),a
	call asicOn
	call makeOndulation
	call LoopScroll
	call asicOff
dontOndule
	call TstSpace
	inc a 
	jr nz, next0
	jr main
next0:

; clean the screen

  	ld   hl,#C000
	ld   de,#C001
	ld   bc,#8000
	ld   (hl),l
	ldir
;ldir

ret 



;
; Boucle principale de la de�mo
;
LoopScroll
//brk
	LD	A,13				; copie des positions des sprites hards depuis tableau PosSizeSpr
	LD	HL,PosSizeSpr		; 13 positions de sprites a initialiser
	LD	DE,#6000			; Adresse dans l'asic
SetSizePos
	LD	BC,5				; Seulement 5 valeurs !!!
	LDIR

	INC	E
	INC	E
	INC	E				; Mais 8 octets entre chaque pos de sprites dans l'ASIC (Ne pas modifier ces 3 octets!)
	DEC	A
	JR	Nz,SetSizePos
//brk
AnimCrb:
	LD	A,0

AnimCrbFin
	DEC	A		
//brk				; A valait 0, -1 = #FF
	LD	(NumSpriteTodo+1),A		; #FF = pas de sprite a copier
	LD	HL,PosSizeSpr
	LD	B,13					; 13 sprites a deplacer
	LD	IX,posSprite
MoveSpr:
	LD	E,(HL)
	INC	HL
	LD	D,(HL)				; DE = position x du sprite
	LD	A,(IX+0)			; position y
	INC	HL
	LD	(HL),A				; Position y du sprite
	INC	IX
	DEC	HL
	DEC	HL
	DEC	DE
	DEC	DE				; x=x-2
	DEC	DE
	DEC	DE				; x=x-4
	LD	(HL),E
	INC	HL
	LD	(HL),D				; remettre nouvelle position
	LD	A,D
	CP	3				; poids fort = 3 ?
	JR	NZ,MoveSpr2
	LD	A,E
	AND	A				; poids faible = 0 (x=#0300) ?
	JR	NZ,MoveSpr2
	LD	A,14			
	SUB	B				; A = numero du sprite en cours + 1
	LD	(NumSpriteToDo+1),A		; sprite a copier
MoveSpr2:
	LD	A,D
	CP	#FF
	JR	NZ,MoveSpr3
	LD	A,E
	CP	#C0				; position x = -64 (#FFC0)?
	JR	NZ,moveSpr3
	LD	DE,#304				; si oui, remettre en #302
	LD	(HL),D
	DEC	HL
	LD	(HL),E
	INC	HL
; Decalage de l'ordre des sprites a afficher
	EXX					; plutot que push BC et HL
	LD	HL,SpriteOrder+11
	LD	DE,SpriteOrder+12
	LD	BC,12
	LD	A,(DE)
	LDDR
	LD	(DE),A
	EXX					; recuperer BC et HL (et DE)

MoveSpr3:
	LD	A,L
	ADD	A,4
	LD	L,A				; position suivante
	JR	Nc,MoveSpr4
	INC	H
MoveSpr4	
	DJNZ	MoveSpr

EnablePalSprite:
	LD	A,0
	AND	A
	JR	Z,EndScrollSprite
ScrollPalSprite
	LD	A,0
	INC	A
	LD	(ScrollPalSprite+1),A
	CP	2				; Une vbl sur 2
	JR	C,EndScrollSprite
	XOR	A
	LD	(ScrollPalSprite+1),A

	LD	HL,PaletteSprite+1		; On commence au pen 2 (pen1=tour des lettres)
	LD	D,H
	LD	E,L
	LD	A,(HL)				; premiere valeur
	INC	HL
	EX	AF,AF'
	LD	A,(HL)				; seconde valeur
	INC	HL	
	LD	BC,26				; 2x13 octets a deplacer
	LDIR
	EX	AF,AF'
	LD	(DE),A				; premiere valeur dans avant derniere
	EX	AF,AF'
	INC	DE
	LD	(DE),A				; deuxieme valeur dans la derniere pour bouclage
EndScrollSprite
	LD	HL,PaletteSprite+2
	LD	DE,#6424
	LD	BC,28
	LDIR					; recopier palette des sprites (a partir du pen 2)

	LD	B,#F5
WaitVBL
	IN	A,(C)
	RRA
	JR	NC,WaitVBL			; Attendre VBL

//brk
NumSpriteToDo:
	LD	A,#FF
	DEC	A				; Sprite a modifier ?
	JP	M,LoopScroll			; sinon, on continue le scroll en x
	LD	I,A				; numero du sprite a modifier
DisplayMessage:
	LD	HL,texte
	LD	A,(HL)
//brk
	SUB	65				; Sprite 0 = 'A' (code ascii 65)
	LD	E,#0f				; Zoom en x et y
	JR	NC,FontOk			; Espace ? (A<65)
	XOR	A				; Meme dans le cas de l'espace, on copiera un sprite (le 0 donc 'A')
	LD	E,A				; Zoom = 0 => invisible
FontOk
;brk
	LD	de,SpriteHardPtr
	ld l,a
    ld h,0
    add hl,hl ;*2
    add hl,hl ;*4
    add hl,hl ;*8
    add hl,hl ;*16
    add hl,hl ;*32
    add hl,hl ;*64
    add hl,hl ;*128
    add hl,hl ;*256 octets taille d'une sprite hard
    add hl,de         ; hl pointe sur la bonne lettre dans la fonte
	PUSH	DE
	LD	A,I				; numero du sprite
	ADD	A,#40				; sprites sont en #4000 dans l'asic
	LD	D,A				; adresse du sprite
	LD	E,0
	ld bc,#00FF
	ldir
	POP	DE
	LD	B,C				; C=0 => B=0
	LD	A,I
	LD	C,A
	ADD	A,A
	ADD	A,A
	ADD	A,C				; numero du sprite * 5
	ADD	A,4				; zoom
	LD	C,A
	LD	HL,PosSizeSpr
	ADD	HL,BC
	LD	(HL),E				; affichage ou non du sprite
	LD	HL,(DisplayMessage+1)
	INC	HL
	LD	A,(HL)
	AND	A				; fin du message ?
	JR	NZ,DisplayMessageOk
	LD	HL,texte
DisplayMessageOk
	LD	(DisplayMessage+1),HL

	JP	LoopScroll



	
SpriteOrder:
	DB	0,1,2,3,4,5,6,7,8,9,10,11,12

PosSprite:
	DS	13,190
; sprite data offset  		: #4000 iteration by #100
; sprite resolution offset 	: #6004 ; 0 pas afficher 01/10/11 pour mode 2/1/0
; sprite x pos offset 		: #6000 (max valeur 640)
; sprite y pos offset 		: #6002 (max valeur 200)
; 


;position et taille de chaque sprites (a copier en #6000)
PosSizeSpr:
	DW	#304,200
	DB	0
	DW	#344,200
	DB	0
	DW	#384,200
	DB	0
	DW	#3C4,200
	DB	0
	DW	#404,200
	DB	0
	DW	#444,200
	DB	0
	DW	#484,200
	DB	0
	DW	#4C4,200
	DB	0
	DW	#504,200
	DB	0
	DW	#544,200
	DB	0
	DW	#584,200
	DB	0
	DW	#5C4,200
	DB	0
	DW	#604,200
	DB	0




;----- asic on functions ------
asicOn
	ld bc,#7fc0
	ld a,#b8
	out (c),c
	out (c),a
	ret 
;------------------------------

;----- asic off functions -----
asicOff
	ld bc,#7fa0
	out (c),c
	ret
;-------------------------------


;---- make ondulation ---
makeOndulation

	ld a,10
	ld (pri),a

	ld a,150 ;(iterondulation)
	ld b,a
	ld de,sscr
	tb ld hl,ondulationData ;ondulation


loopOndule
	ld a,(hl)                   ; on recupere les valeurs des ondulations à faire
	or #80
	ld (de),a                   ; on poke dans le sscr
	inc hl                      ; on incremente pour avoir la prochaine valeur
	defs 64-6-2-2-3,0               ; on attend pour synchroniser
	djnz loopOndule

	ld a,(tb+1)
	inc a
	and #5f
	ld (tb+1),a

	xor a ; raz sscr
	ld (sscr),a

	ret 

TstSpace:
	LD	BC,#F40E
	OUT	(C),C
	LD	BC,#F6C0
	OUT	(C),C
	XOR	A
	OUT	(C),A
	LD	BC,#F792
	OUT	(C),C
	LD	BC,#F645
	OUT	(C),C
	LD	B,#F4
	IN	A,(C)
	LD	BC,#F782
	OUT	(C),C
	LD	BC,#F600
	OUT	(C),C
/*	INC	A
	JR	Z,TstSpace

	LD	BC,#BC0C
	LD	A,#30
	OUT	(C),C
	INC	B
	OUT	(C),A
*/
	RET


;----------------------------------------------------------

 

texte:
db 'A HELLO MY LITTLE CHICKEN.'
db 'ALL IMPACT WISH YOU A HAPPY BIRTHDAY.'
db 'YOU ARE STILL THE SAME, KEEP ON.'
db 'HOPE THIS LITTLE PRESENT WILL BE APPRECIATED.'
db 'YOU CAN RECOGNIZE THE KRIS S TOUCH ON GFX.'
db '..........................................'
db 'KISSES FROM THE HALF TEAM.........'
db 'AST........DEMONIAK.......KRIS........SID'
db 0 


;---- data -----
include "depack_zx0.asm"

UnlockAsic:
	DB	#FF,#00,#FF,#77,#B3,#51,#A8,#D4,#62,#39,#9C,#46,#2B,#15,#8A,#CD,#EE
Palette:
	DB	#8C,#00,#00,#40,#00,#60,#00,#90,#00,#B0,#00,#D0,#00,#F0,#00,#22,#02,#90,#06,#B0,#09,#B2,#09,#D2,#0B,#F4,#0D,#F6,#0D,#F6,#0F,#F9,#0F,#00,#00
PaletteSprite: 
	db #00, #00, #30, #00, #30, #00, #60, #00, #90, #03, #90, #03, #C0, #03, #F0, #06
	db #F0, #09, #F0, #09, #F3, #0C, #F9, #0F, #FF, #0F, #00, #00, #00, #00, #00, #00


ondulationData
db 0,0,0,0,0,0,0,0,0,0,0
db 0,0,0,0,0,0,0,0,0,0,0
db 0,0,0,0,0,0,0,0,0,0,0
db 4,4,4,4,4,4,4,4,4,4,4
db 4,4,4,4,4,4,4,4,4,4,4
db 8,8,8,8,8,8,8,8,8,8,8
db 8,8,8,8,8,8,8,8,8,8,8
db 12,12,12,12,12,12,12,12,12,12
db 12,12,12,12,12,12,12,12,12,12
db 8,8,8,8,8,8,8,8,8,8,8
db 8,8,8,8,8,8,8,8,8,8,8
db 4,4,4,4,4,4,4,4,4,4,4
db 4,4,4,4,4,4,4,4,4,4,4
db 0,0,0,0,0,0,0,0,0,0
db 0,0,0,0,0,0,0,0,0,0
db 0,0,0,0,0,0,0,0,0,0


include 'lib_text.asm'
SpriteHardPtr: 
  incbin 'SPRITES.SPR' ; decompress 7680 octets
buffer: 

end
save'disc.bin',orig,end-start,DSK,'screen-4cmp.dsk'

