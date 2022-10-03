;----- recherche de la bonne lettre dans la fonte -----------------------
; hl adresse du texte 
; bc adresse du pointeur de la fonte
getSpriteHardPosition
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
ld de,0004
add hl,de ; 256 octets taille d'une sprite hard
ld de,bc        ; recuperation du pointeur de la font
add hl,de         ; hl pointe sur la bonne lettre dans la fonte
ret
;----------------------------------------------

; ------ copie la fonte dans le sprite hard
; hl pointe sur la lettre dans la fonte
; de pointe sur la position du sprite hard
copyFontSpriteHard 
ld bc, #ff
ldir
ret