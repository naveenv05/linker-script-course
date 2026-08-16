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
    .vectors :{
        *(resetVector)
    } >ROM AT> ROM

    .text : {
        * (.text)
    } > ROM AT> ROM

    .rodata : {
        * (.rodata)
        _src_data_start = .;
    } > ROM AT> ROM

    .data : {
        _dst_data_start = .;
        * (.data)
        _dst_data_end = .;
    } > RAM AT> ROM

    .bss : {
        _bss_start = .;
        * (.bss)
        _bss_end = .;
    } > RAM AT > RAM

    /DISCARD/ : {
        *(.*)
    } > ROM
}