/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */

MEMORY
{
    SECTION1 : ORIGIN = 0x20000000, LENGTH = 0x00010000
}

SECTIONS
{
    .text : {
        * (.text)
    } > SECTION1

    .data : {
        * (.data)
    } > SECTION1

    .rodata : {
        * (.rodata)
    } > SECTION1

    .bss : {
        * (.bss)
    } > SECTION1

    /DISCARD/ : {
        main.o
        global.o
    } > SECTION1
}