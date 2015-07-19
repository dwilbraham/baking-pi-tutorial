.globl Wait
Wait:
waitTime .req r0
counter .req r1
countLow .req r2
countHi .req r3

ldr counter,=0x20003004
ldrd countLow,countHi,[counter]
add waitTime,countLow
waitUntil .req waitTime 
.unreq waitTime
waitLoop$:
  ldrd countLow,countHi,[counter]
  cmp waitUntil,countLow
  bhi waitLoop$
.unreq waitUntil
.unreq counter
.unreq countLow
.unreq countHi
mov pc,lr

