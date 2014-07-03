nop
st %0 [11]
ld %1 [22]
sub %4 %0 %1
cmov %3 %4
mov %0 1
mov %1 1
sub %1 %0 %1
mov %2 preloop
st %2 [0xfffffd]
mov %2 0
st %2 [0xfffffe]
st %2 [0xffffff]
st %2 [0xfffffc]
nop
nop
preloop:
mov %0 0xf
mov %1 0
mov %2 1

loop:
sub %4 %0 %1
add %1 %1 %2
mov %4 loop
st %4 [0xfffffd]
cst %4 [0xfffffc]
nop
nop
nop

