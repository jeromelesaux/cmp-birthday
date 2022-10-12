;----- recherche de la bonne lettre dans la fonte -----------------------
; hl adresse du texte 
; bc adresse du pointeur de la fonte
; de offset de la fonte correspondante
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


; initial offset stored in hl
; get the next offset of the sprite hard
; stored in de
nextSpriteHard
    ld de,hl ; save initial value
    ld bc,#4f00
    sbc hl,bc
    jr nz, continueNextSH
    ld de,#4000
    ret
continueNextSH
    ld hl,#ff
    add hl,de
    ld de,hl    
ret

; ------ copie la fonte dans le sprite hard
; hl pointe sur la lettre dans la fonte
; de pointe sur la position du sprite hard
copySpriteHard 
    ld bc, #00ff
    ldir
ret

; hl pointe sur la palette des sprites 
copySpriteHardPalette 
    ld de, #6422
    ld bc, #001E
    ldir 
ret 