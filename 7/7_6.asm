LXI H, 8050H
MVI C, 00H
MVI B, 00H
MVI E, 00H
MVI D, 00H
loop1: MOV A, M
CPI 00H
JZ zero
ANI 80H
JNZ neg
INR D
JMP loop2
zero: INR E
JMP loop2
neg: INR B
loop2: INX H
INR C
MOV A, C
CPI 0AH
JNZ loop1
LXI H, 8070H
MOV M, B
INX H
MOV M, E
INX H
MOV M, D
HLT
