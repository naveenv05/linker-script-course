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
        main.o (.text)
    } > SECTION1

    .data : {
        main.o (.data)
    } > SECTION1

    .bss : {
        main.o (.bss)
    } > SECTION1
}