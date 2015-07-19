.section .init
.globl _start
_start:
b main

.section .text
main:
mov sp,#0x8000

pinNum .req r0
pinFunc .req r1
mov pinNum,#16
mov pinFunc,#1
bl SetGpioFunction
.unreq pinNum
.unreq pinFunc

ptrn .req r4
ldr ptrn,=pattern
ldr ptrn,[ptrn]
seq .req r5
mov seq,#0

loop$: 
pinNum .req r0
pinVal .req r1
mov pinNum,#16
mov r1,#1
lsl r1,seq
and r1,ptrn
bl SetGpio
add seq,#1
and seq,#0b11111
.unreq pinNum
.unreq pinVal

waitTime .req r0
ldr waitTime,=250000
bl Wait
.unreq waitTime

b loop$

.section .data
.align 2
pattern:
.int 0b11111111101010100010001000101010
