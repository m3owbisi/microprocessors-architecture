MVI D, 06H
MVI B, 00H
MVI C, 01H
MOV A, B
loop: ADD B
MOV B, C
MOV C, A
DCR D
JNZ loop
HLT
