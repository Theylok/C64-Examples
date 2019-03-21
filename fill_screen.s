/*
 * Fills the screen with A's
 */
*=$0801 "Program"
.byte $0c,$08,$e3,$07,$9e,$20,$32,$30,$36,$32,$00,$00,$00

start:
    // Set background color and border color to black
    lda #0     // 0 = black
    sta $d020  // border
    sta $d021  // background

    // Set text color to green
    lda #5     // 5 = green
    sta $0286  // text color
    jsr $e544  // apply text color

    lda #1
    ldx #0

fill_screen_loop:
    sta $0400, x
    sta $04fa, x
    sta $05f4, x
    sta $06ee, x

    inx
    cpx #250
    bne fill_screen_loop

    rts
