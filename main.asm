;
nolist
run start ;  pour winape
startApp    

pri equ #6800
sscr equ pri+4
splt equ pri+2
;
; Ici les datas du Player SID
;
ORG #200
playsid
      DB #FF,#2F,#00,#09,#00,#10,#00,#09
      DB #00,#10,#01,#40,#20,#40,#CD,#3B
      DB #07,#CD,#30,#04,#CD,#37,#04,#3E
      DB #0A,#D6,#08,#87,#26,#80,#84,#67
      DB #2E,#00,#22,#45,#06,#3A,#D9,#05
      DB #F5,#CD,#6D,#02,#F1,#3D,#20,#F8
      DB #CD,#2B,#07,#AF,#32,#02,#6C,#21
      DB #0C,#02,#22,#00,#6C,#AF,#32,#0F
      DB #6C,#C3,#35,#07,#CD,#6D,#02,#C3
      DB #44,#06,#F3,#01,#0E,#F4,#ED,#49
      DB #01,#C0,#F6,#ED,#49,#ED,#71,#01
      DB #92,#F7,#ED,#49,#06,#F6,#ED,#79
      DB #3E,#F4,#DB,#00,#ED,#71,#01,#82
      DB #F7,#ED,#49,#FB,#C9,#CD,#3B,#07
      DB #F3,#ED,#73,#8F,#02,#3A,#D9,#05
      DB #3D,#DD,#26,#00,#FD,#21,#83,#02
      DB #C3,#33,#03,#2A,#81,#02,#2B,#56
      DB #2B,#5E,#ED,#53,#81,#02,#31,#00
      DB #00,#FB,#C9,#3B,#03,#21,#00,#00
      DB #4D,#16,#00,#3A,#D9,#05,#5F,#B7
      DB #ED,#52,#22,#96,#02,#3D,#D2,#33
      DB #03,#42,#11,#D3,#02,#ED,#53,#81
      DB #02,#ED,#5B,#00,#40,#19,#22,#96
      DB #02,#79,#32,#E9,#02,#32,#D4,#02
      DB #2A,#45,#06,#09,#3A,#D9,#05,#4F
      DB #09,#7C,#E6,#03,#32,#7B,#02,#7D
      DB #32,#FC,#02,#3E,#00,#3D,#FA,#E0
      DB #02,#FD,#21,#E5,#02,#C3,#33,#03
      DB #3A,#D9,#05,#18,#06,#3A,#D9,#05
      DB #06,#00,#90,#2A,#DE,#02,#23,#5E
      DB #23,#56,#13,#13,#13,#13,#21,#A1
      DB #00,#19,#EB,#36,#00,#23,#EB,#ED
      DB #A0,#ED,#A0,#ED,#A0,#ED,#A0,#ED
      DB #A0,#FD,#21,#10,#03,#3D,#18,#CD
      DB #2A,#DE,#02,#2B,#56,#2B,#5E,#21
      DB #6A,#FD,#19,#38,#0A,#21,#95,#02
      DB #ED,#53,#81,#02,#11,#33,#03,#ED
      DB #53,#DE,#02,#ED,#7B,#8F,#02,#FB
      DB #C9,#3B,#03,#31,#99,#04,#C3,#C5
      DB #03,#43,#03,#31,#A3,#04,#C3,#C5
      DB #03,#4B,#03,#31,#AD,#04,#C3,#C5
      DB #03,#53,#03,#31,#B7,#04,#C3,#C5
      DB #03,#5B,#03,#31,#C1,#04,#C3,#C5
      DB #03,#63,#03,#31,#CB,#04,#C3,#C5
      DB #03,#6B,#03,#31,#D5,#04,#C3,#C5
      DB #03,#73,#03,#31,#DF,#04,#C3,#C5
      DB #03,#7B,#03,#31,#E9,#04,#C3,#C5
      DB #03,#83,#03,#31,#F3,#04,#C3,#C5
      DB #03,#8B,#03,#31,#FD,#04,#C3,#C5
      DB #03,#93,#03,#31,#07,#05,#C3,#C5
      DB #03,#9B,#03,#31,#11,#05,#C3,#C5
      DB #03,#95,#02,#31,#1B,#05,#C3,#C5
      DB #03,#AB,#03,#31,#25,#05,#C3,#C5
      DB #03,#33,#03,#31,#2F,#05,#C3,#C5
      DB #03,#08,#7E,#23,#D9,#12,#1C,#08
      DB #3D,#D9,#F2,#DE,#03,#E5,#C5,#D9
      DB #C5,#E5,#D5,#FD,#E9,#D1,#E1,#C1
      DB #04,#05,#28,#0F,#D9,#57,#D9,#80
      DB #30,#4C,#08,#7E,#2C,#12,#1C,#04
      DB #20,#F9,#08,#D9,#C1,#E1,#CB,#21
      DB #20,#04,#4E,#23,#CB,#31,#30,#C9
      DB #46,#23,#57,#80,#30,#15,#08,#78
      DB #D9,#47,#D9,#7E,#23,#D9,#81,#6F
      DB #7E,#2C,#12,#1C,#04,#20,#F9,#08
      DB #D9,#18,#DB,#08,#7A,#D9,#47,#04
      DB #D9,#7E,#23,#E5,#C5,#D9,#81,#6F
      DB #7E,#2C,#12,#1C,#10,#FA,#08,#47
      DB #04,#C5,#E5,#D5,#FD,#E9,#3C,#47
      DB #C5,#D9,#7A,#D9,#47,#04,#7E,#12
      DB #2C,#1C,#10,#FA,#E5,#D5,#FD,#E9
      DB #2A,#00,#40,#22,#96,#02,#C9,#21
      DB #95,#02,#22,#81,#02,#21,#33,#03
      DB #22,#DE,#02,#AF,#32,#7B,#02,#21
      DB #00,#00,#22,#45,#06,#CD,#5C,#04
      DB #21,#99,#04,#11,#39,#05,#01,#A0
      DB #00,#ED,#B0,#C9,#21,#DC,#05,#D9
      DB #3A,#D9,#05,#47,#ED,#5B,#DA,#05
      DB #13,#13,#21,#99,#04,#C5,#D9,#7E
      DB #23,#23,#D9,#36,#00,#23,#77,#23
      DB #23,#77,#23,#36,#00,#23,#36,#00
      DB #23,#36,#40,#23,#23,#EB,#23,#4E
      DB #23,#46,#E5,#09,#44,#4D,#E1,#23
      DB #EB,#71,#23,#70,#23,#C1,#10,#D5
      DB #C9,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#00,#40,#80,#01,#81,#01
      DB #82,#01,#83,#01,#84,#01,#85,#01
      DB #86,#01,#87,#01,#88,#01,#89,#01
      DB #8A,#01,#8B,#01,#8C,#01,#8D,#01
      DB #8E,#01,#8F,#01,#CD,#2B,#07,#3A
      DB #0F,#6C,#CB,#47,#20,#0B,#21,#00
      DB #02,#22,#00,#6C,#3E,#01,#32,#0F
      DB #6C,#C3,#35,#07,#CB,#3C,#CB,#1D
      DB #CB,#3C,#CB,#1D,#CB,#3C,#CB,#1D
      DB #DC,#2C,#06,#01,#00,#10,#09,#2B
      DB #22,#04,#02,#C9,#23,#C9,#CB,#3C
      DB #CB,#1D,#CB,#3C,#CB,#1D,#CB,#3C
      DB #CB,#1D,#01,#00,#10,#09,#2B,#2B
      DB #22,#08,#02,#C9,#21,#00,#80,#CD
      DB #3B,#07,#3A,#45,#06,#26,#8A,#6E
      DB #26,#0A,#22,#02,#02,#21,#04,#0A
      DB #22,#06,#02,#2A,#45,#06,#5E,#24
      DB #7E,#E6,#0F,#57,#EB,#E5,#CD,#14
      DB #06,#E1,#CD,#2E,#06,#CD,#FC,#05
      DB #CD,#3B,#07,#2A,#45,#06,#26,#80
      DB #1E,#00,#7E,#FE,#00,#32,#7C,#06
      DB #C4,#0F,#07,#24,#1C,#7E,#FE,#00
      DB #32,#87,#06,#C4,#0F,#07,#24,#1C
      DB #7E,#FE,#00,#32,#92,#06,#C4,#0F
      DB #07,#24,#1C,#7E,#FE,#00,#32,#9D
      DB #06,#C4,#0F,#07,#24,#1C,#7E,#FE
      DB #00,#32,#A8,#06,#C4,#0F,#07,#24
      DB #1C,#7E,#FE,#00,#32,#B3,#06,#C4
      DB #0F,#07,#24,#1C,#7E,#FE,#00,#32
      DB #BE,#06,#C4,#0F,#07,#24,#1C,#7E
      DB #FE,#00,#32,#C9,#06,#C4,#0F,#07
      DB #24,#1C,#7B,#FE,#0A,#28,#04,#7E
      DB #CD,#0F,#07,#24,#1C,#7B,#FE,#0A
      DB #28,#04,#7E,#CD,#0F,#07,#24,#1C
      DB #7B,#FE,#0A,#28,#04,#7E,#CD,#0F
      DB #07,#24,#1C,#7E,#CD,#0F,#07,#24
      DB #1C,#7E,#CD,#0F,#07,#24,#1C,#7E
      DB #FE,#FF,#28,#03,#CD,#0F,#07,#2A
      DB #45,#06,#2C,#22,#45,#06,#C9,#06
      DB #F4,#ED,#59,#01,#C0,#F6,#ED,#49
      DB #06,#F6,#ED,#41,#ED,#71,#06,#F4
      DB #ED,#79,#3E,#80,#06,#F6,#ED,#79
      DB #ED,#71,#C9,#01,#C0,#7F,#3E,#B8
      DB #ED,#49,#ED,#79,#C9,#01,#A0,#7F
      DB #ED,#49,#C9,#01,#C4,#7F,#ED,#49
      DB #C9
player_end
	org #800
;
; Table de rebond pour le scrolling
; de 0 a 200
;
rebond
      DB #00,#00,#00,#00,#00,#01,#02,#02
      DB #03,#04,#05,#07,#08,#0A,#0B,#0D
      DB #0F,#11,#13,#15,#17,#19,#1C,#1F
      DB #21,#24,#27,#2A,#2D,#30,#33,#37
      DB #3A,#3E,#41,#45,#49,#4C,#50,#54
      DB #58,#5D,#61,#65,#69,#6E,#72,#76
      DB #7B,#80,#84,#89,#8D,#92,#97,#9C
      DB #A0,#A5,#AA,#AF,#B4,#B9,#BE,#C3
      DB #C8,#C3,#BE,#B9,#B4,#AF,#AA,#A5
      DB #A0,#9C,#97,#92,#8D,#89,#84,#80
      DB #7B,#76,#72,#6E,#69,#65,#61,#5D
      DB #58,#54,#50,#4C,#49,#45,#41,#3E
      DB #3A,#37,#33,#30,#2D,#2A,#27,#24
      DB #21,#1F,#1C,#19,#17,#15,#13,#11
      DB #0F,#0D,#0B,#0A,#08,#07,#05,#04
      DB #03,#02,#02,#01,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#01,#02,#02
      DB #03,#04,#05,#07,#08,#0A,#0B,#0D
      DB #0F,#11,#13,#15,#17,#19,#1C,#1F
      DB #21,#24,#27,#2A,#2D,#30,#33,#37
      DB #3A,#3E,#41,#45,#49,#4C,#50,#54
      DB #58,#5D,#61,#65,#69,#6E,#72,#76
      DB #7B,#80,#84,#89,#8D,#92,#97,#9C
      DB #A0,#A5,#AA,#AF,#B4,#B9,#BE,#C3
      DB #C8,#C3,#BE,#B9,#B4,#AF,#AA,#A5
      DB #A0,#9C,#97,#92,#8D,#89,#84,#80
      DB #7B,#76,#72,#6E,#69,#65,#61,#5D
      DB #58,#54,#50,#4C,#49,#45,#41,#3E
      DB #3A,#37,#33,#30,#2D,#2A,#27,#24
      DB #21,#1F,#1C,#19,#17,#15,#13,#11
      DB #0F,#0D,#0B,#0A,#08,#07,#05,#04
      DB #03,#02,#02,#01,#00,#00,#00,#00
end_rebond
;
; Table de Cos pour les ondulations sscr
;  de 0 a 255
;
cosPtr:
      DB #FF,#FE,#FE,#FE,#FE,#FE,#FD,#FD
      DB #FC,#FB,#FB,#FA,#F9,#F8,#F7,#F6
      DB #F5,#F4,#F2,#F1,#EF,#EE,#EC,#EB
      DB #E9,#E7,#E5,#E4,#E2,#E0,#DD,#DB
      DB #D9,#D7,#D5,#D2,#D0,#CD,#CB,#C8
      DB #C6,#C3,#C1,#BE,#BB,#B8,#B6,#B3
      DB #B0,#AD,#AA,#A7,#A4,#A1,#9E,#9B
      DB #98,#95,#92,#8F,#8B,#88,#85,#82
      DB #7F,#7C,#79,#76,#73,#6F,#6C,#69
      DB #66,#63,#60,#5D,#5A,#57,#54,#51
      DB #4E,#4B,#48,#46,#43,#40,#3D,#3B
      DB #38,#36,#33,#31,#2E,#2C,#29,#27
      DB #25,#23,#21,#1E,#1C,#1A,#19,#17
      DB #15,#13,#12,#10,#0F,#0D,#0C,#0A
      DB #09,#08,#07,#06,#05,#04,#03,#03
      DB #02,#01,#01,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#01,#01
      DB #02,#03,#03,#04,#05,#06,#07,#08
      DB #09,#0A,#0C,#0D,#0F,#10,#12,#13
      DB #15,#17,#19,#1A,#1C,#1E,#21,#23
      DB #25,#27,#29,#2C,#2E,#31,#33,#36
      DB #38,#3B,#3D,#40,#43,#46,#48,#4B
      DB #4E,#51,#54,#57,#5A,#5D,#60,#63
      DB #66,#69,#6C,#6F,#73,#76,#79,#7C
      DB #7F,#82,#85,#88,#8B,#8F,#92,#95
      DB #98,#9B,#9E,#A1,#A4,#A7,#AA,#AD
      DB #B0,#B3,#B6,#B8,#BB,#BE,#C1,#C3
      DB #C6,#C8,#CB,#CD,#D0,#D2,#D5,#D7
      DB #D9,#DB,#DD,#E0,#E2,#E4,#E5,#E7
      DB #E9,#EB,#EC,#EE,#EF,#F1,#F2,#F4
      DB #F5,#F6,#F7,#F8,#F9,#FA,#FB,#FB
      DB #FC,#FD,#FD,#FE,#FE,#FE,#FE,#FE
end_cos
;
; Table de convertion
; Seules les valeurs possibles du sscr 
; en fonction du mode graphique utilise
; sont actives
;
tb_conv defb 0,4,8,12

start 

          di
          ld hl,#38
          ld de,inter+1
          ldi:ldi
          ld hl,#C9FB
          ld (#38),hl
          ld (pile+1),sp
;

          exx:ex af,af'
          push af:push bc
          push de:push hl

	im 1
;                     
; initialisation Musique
;        
        
          ld a,#C4      ; banque ou se trouve la zik
          ld (#073C),a

	call delock
          call  #020E    ; init_music
;
          ld hl,#0130
          call crtc
          ld hl,#0232
          call crtc
          ld hl,#0622
          call crtc
          ld hl,#0723
          call crtc
;
          ld bc,#7FC5
          out (c),c
          ld hl,#4000
          ld de,#C000
          ld bc,#4000
          ldir
          ld bc,#7FC0
          out (c),c
;
	ld hl,#c000 ; on efface la ligne impdraw
	ld de,#c001 ; qui contient la zone 0-#40
	ld bc,#40 ; dans la partie haute de l'ecran
	ld (hl),l
	ldir
;
          call asicon
	ld c,#8C      ; mode 0
          out (c),c
;  
        ld hl,pal_coca
          ld de,#6400
          ld bc,#20
          ldir
          ld hl,#00
          ld (#6420),hl
	LD	HL,PaletteSprite+2
	LD	DE,#6424
	LD	BC,28
	LDIR					; recopier p
	call asicoff 
          ei       
;
; Boucle principale de la de?mo
;
main
	ld b,#F5
	in a,(c)
	rra
	jr nc,main+2

	call asicon
;                  
; Premiere partie de l'image en #c000
;

          ld hl,#3000
          ld bc,#BC0C
          out (c),c
          inc b
          out (c),h
          dec b
          inc c
          out (c),c
          inc b
          out (c),l
;
	call makeondulation
	
;         
;   Deuxieme partie page ecran  en #4000 (bank #c0)
;
          ld a,167
          ld (#6800),a  ; pri
          ld (#6801),a  ; splt
          ld hl,#10
          ld (#6802),hl ; ssa   
;       
          call asicoff        
		
; 
; Joue Musique
;
         call #0244
	call jump
	exx ; on exx car le player utilise deja les registres secondaires
	       call LoopScroll
	exx
	call asicoff ; en cas de retz
;
space     ld bc,#F40E
          out (c),c
          ld bc,#F6C0
          out (c),c
      DW #71ED        ; out (c),0
          ld bc,#F792
          out (c),c
          ld bc,#F645
          out (c),c
          ld b,#F4
          in a,(c)
          ld bc,#F782
          out (c),c
          bit 7,a
          jp nz,main
;
exit      di
inter  

         ld hl,0
          ld (#38),hl
;

          pop hl:pop de
          pop bc:pop af
          exx:ex af,af'
;
pile      ld sp,0
;
          ld hl,#C000
          ld de,#C001
          ld bc,#3FFF
          ld (hl),l
          ldir
;                       
; Reinit des registres crtc utilises
;
          ld hl,#0128
          call crtc
          ld hl,#022E
          call crtc
          ld hl,#0619
          call crtc
          ld hl,#071E
          call crtc
          ld hl,#0C30
          call crtc
          ld hl,#0D00
          call crtc
;                    
          call #BCA7
;
          call asicon
          xor a
          ld (#6800),a  ; pri a zero
          ld (#6801),a  ; splt a zero
          ld (#6C0F),a  ; dcsr a zero;
	ld (sscr),a ; sscr a Z
;
; All Sprites Hard OFF
;
	ld hl,#6004
	ld de,8
	ld b,16
loop_spr ld (hl),d 
	add hl,de
	djnz loop_spr
;

          call asicoff
          ei
          ret
;
crtc      ld b,#BC
          out (c),h
          inc b
          out (c),l
          ret

;
LoopScroll
	 
      call asicon
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
	
AnimCrb:
	LD	A,0

AnimCrbFin
	DEC	A		
				; A valait 0, -1 = #FF
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
	

;EnablePalSprite:
;	LD	A,0
;	AND	A
;	JR	Z,EndScrollSprite
;ScrollPalSprite
;	LD	A,0
;	INC	A
;	LD	(ScrollPalSprite+1),A
;	CP	2				; Une vbl sur 2
;	JR	C,EndScrollSprite
;	XOR	A
;	LD	(ScrollPalSprite+1),A

;	LD	HL,PaletteSprite+1		; On commence au pen 2 (pen1=tour des lettres)
;	LD	D,H
;	LD	E,L
;	LD	A,(HL)				; premiere valeur
;	INC	HL
;	EX	AF,AF'
;	LD	A,(HL)				; seconde valeur
;	INC	HL	
;	LD	BC,26				; 2x13 octets a deplacer
;	LDIR
;	EX	AF,AF'
;	LD	(DE),A				; premiere valeur dans avant derniere
;	EX	AF,AF'
;	INC	DE
;	LD	(DE),A				; deuxieme valeur dans la derniere pour bouclage
;EndScrollSprite
;	LD	HL,PaletteSprite+2
;	LD	DE,#6424
;	LD	BC,28
;	LDIR					; recopier palette des sprites (a partir du pen 2)

NumSpriteToDo:
	LD	A,#FF
	DEC	A				; Sprite a modifier ?
	;JP	M,LoopScroll			; sinon, on continue le scroll en x
	;
	cp #fe
	ret z

 	LD	I,A				; numero du sprite a modifier
DisplayMessage:
	LD	HL,texte
	LD	A,(HL)

	SUB	65				; Sprite 0 = 'A' (code ascii 65)
	LD	E,14			; Zoom en x et y
	JR	NC,FontOk			; Espace ? (A<65)
	XOR	A				; Meme dans le cas de l'espace, on copiera un sprite (le 0 donc 'A')
	LD	E,A				; Zoom = 0 => invisible
FontOk
;brk
	PUSH	DE
	LD	de,my_font ; SpriteHardPtr
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

	LD	A,I				; numero du sprite
	ADD	A,#40				; sprites sont en #4000 dans l'asic
	LD	D,A				; adresse du sprite
	LD	E,0
	ld bc,#00FF+1
	ldir
  	POP	DE
	LD	B,C				; C=0 => B=0
	LD	A,I
	LD	C,A
	ADD	A,A
	ADD	A,A
	ADD	A,C				; numero du sprite * 5
	ADD	A,4 				; zoom
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

	     jp asicoff

 

SpriteOrder:
	DB	0,1,2,3,4,5,6,7,8,9,10,11,12

PosSprite:
	DS	13,190
; sprite data offset  		; #4000 iteration by #100
; sprite resolution offset 	; #6004 ; 0 pas afficher 01/10/11 pour mode 2/1/0
; sprite x pos offset 		; #6000 (max valeur 640)
; sprite y pos offset 		; #6002 (max valeur 200)
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

;
; Scrolling Jumper 
;
jump	ld hl,rebond  ; table de rebond
	inc l ; L varie seulement de 0 a 255 et reboucle
        ld (jump+1),hl
	ld a,(hl) ; recupere valeur dans table de rebond
	ld hl,PosSizeSpr+2
	ld de,5
	ld b,13 ; 13 sprh utilises
loop_ju	ld (hl),a
	add hl,de
	djnz loop_ju
	ret
;


;---- make ondulation ---
makeOndulation

	ld a,4
	ld (pri),a

	ld a,250;(iterondulation)
; 	ld b,a
	ld de,tb_conv
tb0	 ld hl,cosPtr;ondulationData ;ondulation
tb1	ld bc,rebond
	
	ld b,a
loopOndule
	ld a,(bc)                   ; on recupere les valeurs des ondulations ??? faire
 	add a,(hl)                  ; on melange 2 tables
	and 3 ; 4 valeurs possibles seulement
	ld e,a
	ld a,(de)
	or #80
	ld (#6804),a                   ; on poke dans le sscr
	inc l                      ; on incremente pour avoir la prochaine valeur
	inc c
	defs 64-6-2-2-4-8,0               ; on attend pour synchroniser
	djnz loopOndule
;
	ld a,(tb0+1)
	add a,1
	ld (tb0+1),a
;
	ld a,(tb1+1)
	add 2 
	ld (tb1+1),a

	ld a,#80 ; on active le bit de maskage sur tout l'ecran 
	ld (sscr),a

	ret 

texte:
db 'HI FRIENDS       THIS INTRO IS A PART OF THE VETERAN MEGADEMO FOR AMSTRAD PLUS'
db ' AND IS DEDICATED TO OUR GREAT CMP '
db '        EVEN ME I KICK MY ASS TO PRODUCE SOMETHING '
db 'NOW A SPECIAL MESSAGE TO CMP            '
db 'HELLO MY LITTLE CHICKEN.  '
db 'ALL IMPACT TEAM WISH YOU A HAPPY BIRTHDAY.  '
db 'YOU ARE STILL THE SAME, KEEP ON.  '
db 'HOPE THIS LITTLE PRESENT WILL BE APPRECIATED.  '
db 'YOU CAN RECOGNIZE THE KRIS S TOUCH ON GFX AND IT S DITHERED BJ '
db '.......................'
db 'KISSES FROM THE HALF TEAM...........'
db 'AST.........DEMONIAK....DRILL.......KRIS........SID          '
db '.......................'
db ' THANKS TO KRIS FOR HIS GREAT GFX AND FONT           '
db ' THANKS TO AST AND DEMONIAK TO SUPPORT ME            '
db ' TOOLS RASM TO ASSEMBLE IT MARTINE TO TRANSFERT AND FORMAT CONVERSIONS '
db '      NOW I HOPE TO SEE YOU SOON AT A MEETING OR ON DISCORD '
db ' AND REMEMBER THE IMPACT TEAM DEVELOPS A LOT OF TOOLS '
db '    IMPDRAW    '
db '    IMPDOS     '
db '    IMPTILE    '
db '    SYSCO      '
db '    CONVIMGCPC '
db '    WINCPC     '
db '  MANAGEDDSK   '
db '    DSKCLI     '
db '    MARTINE    '
db ' CODE BY SID   '
DB ' CYBERNOID 1 MUSIC BY MADMAX '
DB ' PLAYER BY AST '
DB ' GFXS BY KRIS '
db ' IF YOU ENJOY THEM TELL US AND PROPOSE SOME FEATURES ON DISCORD OR THE WEB FORUM '
db '                          STAY TUNED                 '
db 0 

PaletteSprite: 
	;db #00, #00, #30, #00, #30, #00, #60, #00, #90, #03, #90, #03, #C0, #03, #F0, #06
	;db #F0, #09, #F0, #09, #F3, #0C, #F9, #0F, #FF, #0F, #00, #00, #00, #00, #00, #00
	db #00, #00, #01, #02, #03, #05, #04, #07, #06, #0A, #07, #0C, #09, #0F, #08, #08
	db #0A, #0A, #0B, #0B, #0C, #0C, #0D, #0D, #0F, #0F, #DD, #0D, #FF, #0F, #00, #00


;---- data -----
;include "depack_zx0.asm"


pal_coca
      DB #00,#00,#40,#00,#60,#00,#90,#00
      DB #B0,#00,#D0,#00,#F0,#00,#22,#02
      DB #90,#06,#B0,#09,#B2,#09,#D2,#0B
      DB #F4,#0D,#F6,#0D,#F6,#0F,#F9,#0F
;
delock
          ld hl,asic_seq
          ld bc,#BD11
loop_delock outi
          inc b
          dec c
          jr nz,loop_delock
          ret
;
asic_seq
      DB 255,0,255,119,179,81,168,212
      DB 98,57,156,70,43,21,138,205,238
;
asicon
          ld bc,#7FC0
          ld a,#B8
          out (c),c
          out (c),a
          ret
asicoff
          ld bc,#7FA0
          out (c),c
          ret
;
; Font by Kris
;
my_font
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#01,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#01,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #01,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#01,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#07,#01,#0E,#00
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#08,#01,#0E,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #01,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #01,#01,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#02,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#04
      DB #01,#04,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#02,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#01,#0E,#00,#00
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#01,#0E,#00,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#01,#0E,#00,#00
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#01,#0E,#00,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#00,#00
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#01,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #01,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#01,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#00,#00,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#02,#02,#02
      DB #02,#02,#02,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#03,#03,#03
      DB #03,#03,#03,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#04,#04
      DB #04,#04,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#0E,#01,#05,#05
      DB #05,#05,#01,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#06,#06
      DB #06,#06,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#07,#07
      DB #07,#07,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#08,#08
      DB #08,#08,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#09,#09
      DB #09,#09,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#0E,#0E,#01,#0A,#0A
      DB #0A,#0A,#01,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#0B,#0B
      DB #0B,#0B,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#0C,#0C,#0C
      DB #0C,#0C,#0C,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#0D,#0D,#0D
      DB #0D,#0D,#0D,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #0E,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#00,#00,#00,#00,#00,#00,#00
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#00,#00,#0E,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#00,#0E,#01,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#0E,#01,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#06,#01
      DB #01,#05,#05,#05,#05,#01,#0E,#00
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #06,#06,#06,#06,#01,#0E,#00,#00
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#01,#0E,#00,#00,#00
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#01,#0E,#00,#00,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #09,#09,#09,#09,#01,#0E,#00,#00
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #01,#0A,#0A,#0A,#0A,#01,#0E,#00
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#0E,#01,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#00,#0E,#01,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#00,#00,#0E,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#00
      DB #00,#00,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #01,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#04
      DB #04,#04,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#05
      DB #05,#05,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#06
      DB #06,#06,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #07,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #01,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#01,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#01,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#08,#01,#0E,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#00,#00,#00,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#0E,#01,#0E,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0E,#01,#0E,#01,#0E,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#0E,#01,#0E,#01,#0E,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0E,#01,#0E,#01,#0E,#01,#0E,#01
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0E,#01,#0E,#01,#0E,#01,#0E
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#0E,#01,#0E,#01,#0E,#0E
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#01,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#08
      DB #08,#08,#08,#08,#08,#01,#0E,#00
      DB #00,#0E,#01,#09,#09,#09,#09,#09
      DB #09,#09,#09,#09,#01,#0E,#00,#00
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0A,#0A,#0A,#01,#0E,#00,#00,#00
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#0B,#0B,#0B,#01,#0E,#00,#00
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#01,#0C,#0C,#0C,#01,#0E,#00
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #01,#01,#01,#01,#01,#01,#0E,#00
      DB #00,#0E,#01,#07,#07,#07,#07,#07
      DB #07,#07,#07,#07,#07,#01,#01,#0E
      DB #00,#0E,#01,#01,#08,#08,#08,#08
      DB #08,#08,#08,#08,#08,#08,#01,#0E
      DB #00,#00,#0E,#01,#01,#01,#01,#01
      DB #01,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#00
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#0E,#00
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#01,#0E,#00
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#01,#0E,#00
      DB #00,#0E,#01,#01,#01,#01,#04,#04
      DB #04,#04,#01,#01,#01,#01,#0E,#00
      DB #00,#0E,#0E,#0E,#0E,#01,#05,#05
      DB #05,#05,#01,#0E,#0E,#0E,#0E,#00
      DB #00,#00,#00,#00,#0E,#01,#06,#06
      DB #06,#06,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#07,#07
      DB #07,#07,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#08,#08
      DB #08,#08,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#09,#09
      DB #09,#09,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#0E,#0E,#01,#0A,#0A
      DB #0A,#0A,#01,#0E,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#0B,#0B
      DB #0B,#0B,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#0C,#0C,#0C
      DB #0C,#0C,#0C,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#0D,#0D,#0D
      DB #0D,#0D,#0D,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#01,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #0E,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #0E,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#01
      DB #0E,#01,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#01
      DB #0E,#01,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #01,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#00,#0E,#01,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#01,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#00,#0E,#01,#06,#06,#06,#06
      DB #01,#06,#06,#06,#06,#01,#0E,#00
      DB #00,#00,#0E,#01,#07,#07,#07,#07
      DB #01,#07,#07,#07,#07,#01,#0E,#00
      DB #00,#00,#0E,#01,#08,#08,#08,#08
      DB #01,#08,#08,#08,#08,#01,#0E,#00
      DB #00,#00,#0E,#01,#09,#09,#09,#09
      DB #01,#09,#09,#09,#09,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#0A,#0A,#0A
      DB #0A,#0A,#0A,#0A,#01,#0E,#00,#00
      DB #00,#00,#00,#0E,#01,#0B,#0B,#0B
      DB #0B,#0B,#0B,#0B,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#0C,#0C
      DB #0C,#0C,#0C,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#0D,#0D
      DB #0D,#0D,#0D,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#00,#0E,#01,#01
      DB #01,#01,#01,#0E,#00,#00,#00,#00
      DB #00,#00,#00,#00,#00,#00,#0E,#0E
      DB #0E,#0E,#0E,#00,#00,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#01,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#01,#05,#05,#05,#05,#01
      DB #0E,#01,#05,#05,#05,#05,#01,#0E
      DB #00,#0E,#01,#06,#06,#06,#06,#01
      DB #0E,#01,#06,#06,#06,#06,#01,#0E
      DB #00,#0E,#01,#07,#07,#07,#07,#01
      DB #01,#01,#07,#07,#07,#07,#01,#0E
      DB #00,#0E,#01,#08,#08,#08,#08,#01
      DB #08,#01,#08,#08,#08,#08,#01,#0E
      DB #00,#0E,#01,#09,#09,#09,#09,#09
      DB #09,#09,#09,#09,#09,#09,#01,#0E
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#0A
      DB #0A,#0A,#0A,#0A,#0A,#0A,#01,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#0B
      DB #0B,#0B,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #01,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#00
      DB #00,#00,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#01,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#00,#0E,#01,#05,#05,#05,#05
      DB #01,#05,#05,#05,#05,#01,#0E,#00
      DB #00,#00,#0E,#01,#06,#06,#06,#06
      DB #01,#06,#06,#06,#06,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#07,#07,#07
      DB #07,#07,#07,#07,#01,#0E,#00,#00
      DB #00,#00,#00,#0E,#01,#08,#08,#08
      DB #08,#08,#08,#08,#01,#0E,#00,#00
      DB #00,#00,#0E,#01,#09,#09,#09,#09
      DB #01,#09,#09,#09,#09,#01,#0E,#00
      DB #00,#00,#0E,#01,#0A,#0A,#0A,#0A
      DB #01,#0A,#0A,#0A,#0A,#01,#0E,#00
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#01
      DB #0E,#01,#0B,#0B,#0B,#0B,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#01
      DB #0E,#01,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#01
      DB #0E,#01,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #0E,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#01
      DB #0E,#01,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#01
      DB #0E,#01,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#04,#04,#04,#04,#01
      DB #0E,#01,#04,#04,#04,#04,#01,#0E
      DB #00,#00,#0E,#01,#05,#05,#05,#05
      DB #01,#05,#05,#05,#05,#01,#0E,#00
      DB #00,#00,#0E,#01,#06,#06,#06,#06
      DB #01,#06,#06,#06,#06,#01,#0E,#00
      DB #00,#00,#00,#0E,#01,#07,#07,#07
      DB #07,#07,#07,#07,#01,#0E,#00,#00
      DB #00,#00,#00,#0E,#01,#08,#08,#08
      DB #08,#08,#08,#08,#01,#0E,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#09,#09
      DB #09,#09,#09,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#0A,#0A
      DB #0A,#0A,#0A,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#0B,#0B
      DB #0B,#0B,#0B,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#0C,#0C
      DB #0C,#0C,#0C,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#0D,#0D
      DB #0D,#0D,#0D,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#01,#01,#01
      DB #01,#01,#01,#01,#0E,#00,#00,#00
      DB #00,#00,#00,#00,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#00,#00,#00
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#02,#02,#02,#02,#02
      DB #02,#02,#02,#02,#02,#02,#01,#0E
      DB #00,#0E,#01,#03,#03,#03,#03,#03
      DB #03,#03,#03,#03,#03,#03,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#04,#04,#04,#04,#04,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#01
      DB #05,#05,#05,#05,#05,#05,#01,#0E
      DB #00,#00,#00,#00,#00,#0E,#01,#06
      DB #06,#06,#06,#06,#06,#01,#0E,#00
      DB #00,#00,#00,#00,#0E,#01,#07,#07
      DB #07,#07,#07,#07,#01,#0E,#00,#00
      DB #00,#00,#00,#0E,#01,#08,#08,#08
      DB #08,#08,#08,#01,#0E,#00,#00,#00
      DB #00,#00,#0E,#01,#09,#09,#09,#09
      DB #09,#09,#01,#0E,#00,#00,#00,#00
      DB #00,#0E,#01,#0A,#0A,#0A,#0A,#0A
      DB #0A,#01,#0E,#0E,#0E,#0E,#0E,#0E
      DB #00,#0E,#01,#0B,#0B,#0B,#0B,#0B
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#01,#0C,#0C,#0C,#0C,#0C
      DB #0C,#0C,#0C,#0C,#0C,#0C,#01,#0E
      DB #00,#0E,#01,#0D,#0D,#0D,#0D,#0D
      DB #0D,#0D,#0D,#0D,#0D,#0D,#01,#0E
      DB #00,#0E,#01,#01,#01,#01,#01,#01
      DB #01,#01,#01,#01,#01,#01,#01,#0E
      DB #00,#0E,#0E,#0E,#0E,#0E,#0E,#0E
      DB #0E,#0E,#0E,#0E,#0E,#0E,#0E,#0E
end_my_font
endApp 

save'disc.bin',#200,endApp-startApp,DSK,'sid-f-3.dsk'