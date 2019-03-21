/*
 * Prints "Hello, world!" to the screen
 */
*=$0801 "Program"
.byte $0c,$08,$e3,$07,$9e,$20,$32,$30,$36,$32,$00,$00,$00

.var text_length = 13

ldx #0  // initialize counter

loop:
    lda text, x // load character into A
    sta $050b, x  // print character to screen position $050b + X
    inx
    cpx #text_length
    bne loop

    rts


text:
    .encoding "screencode_upper"
    .text "HELLO, WORLD!"
