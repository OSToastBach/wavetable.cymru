        org $1000

        ;159=yellow solid
        ;158=yellow with hole
        ;207=solid white

start
        ldx #$400
        lda #32
clrlp
        sta ,x+
        cmpx #$800
        bne clrlp
main
        ldx #$46c
        ldb #8
        ldy #beer
beercp
        lda ,y+
        sta ,x+
        decb
        bne skipb
        ldb #8
        leax 24,x
skipb
        cmpx #$58c
        bne beercp

theend
        jmp theend

beer
        fcv 207,32,32,32,207,32,32,32
        fcv 207,159,159,159,207,207,207,32
        fcv 207,159,159,159,207,32,207,32
        fcv 207,159,159,159,207,32,207,32
        fcv 207,159,159,159,207,207,207,32
        fcv 207,207,207,207,207,32,32,32
        fcv 32,32,32,32,32,32,32,32
        fcv "BOTTOMS",32,32,32,"UP!",32,32,32
beerend