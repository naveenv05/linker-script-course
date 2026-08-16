/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */

MEMORY
{
    ROM : ORIGIN = 0x20000000, LENGTH = 0x0001000
    RAM : ORIGIN = 0xa0000000, LENGTH = 0x0001000
}

SECTIONS
{
    .rodata : {
        * (.rodata)
    } > ROM

    .data : {
        * (.data)
    } > RAM AT> ROM

    .text : {
        * (.text)
    } > RAM AT> ROM

    .bss : {
        * (.bss)
    } > RAM AT > RAM

    /DISCARD/ : {
        *(.*)
    } > ROM
}