;----- recherche de la bonne lettre dans la fonte -----------------------
; hl adresse du texte 
; bc adresse du pointeur de la fonte
getSpriteHardOffset
ld a,(hl)
sub 65            ; soustrait la premiere lettre ascii de la fonte A 

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
ld de,bc        ; recuperation du pointeur de la font
add hl,de         ; hl pointe sur la bonne lettre dans la fonte
ret
;----------------------------------------------

; ------ copie la fonte dans le sprite hard
; hl pointe sur la lettre dans la fonte
; de pointe sur la position du sprite hard
copyFontSpriteHard 
ld bc, #00ff
ldir
ret

copySpriteHardPalette 
ld de, #6422
ld bc, #0020
ldir 
return 
