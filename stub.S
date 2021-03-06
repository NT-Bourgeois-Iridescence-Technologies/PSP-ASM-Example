/*
Modified BSD License
====================

_Copyright � `2020`, `Hayden Kowalchuk`_  
_All rights reserved._

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of the `<organization>` nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS �AS IS� AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL `Hayden Kowalchuk` BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

 /*
    Thanks to mrneo240 (Hayden Kowalchuk) for the help
 */

.data
.globl module_info

.set push

.section .lib.ent.top
    .align 2
    .word 0                                             
__lib_ent_top:

.section .lib.ent.btm
    .align 2
__lib_ent_bottom:
    .word 0

.section .lib.stub.top
    .align 2
    .word 0
__lib_stub_top:

.section .lib.stub.btm
    .align 2
__lib_stub_bottom:
    .word 0

.set pop

.text

.section .rodata.sceModuleInfo
module_info:
    .align 5
    .hword 0
    .byte 1
    .byte 0
    .ascii "ASM"
    .space 27 - 3
    .byte 0
    .word _gp
    .word __lib_ent_top
    .word __lib_ent_bottom
    .word __lib_stub_top
    .word __lib_stub_bottom