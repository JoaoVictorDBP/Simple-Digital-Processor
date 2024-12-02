# Simple-Digital-Processor (processador digital simples)
Trabalho Final

# Word-Structure (estrutura da palavra):

Palavra de 16 bits 

00000000 (15 - 8) </br>
00000000 (7 - 0)

A: 00 </br>
B: 01 </br>
R: 10

Instrução: bits 15 - 12 </br>
Inteiro (1) / Registrador (0): bit 11 </br>
Registrador 1 (recebe): bits 10 - 9 </br>
Registrador 2 (envia): bits 8 - 7 </br>
Inteiro / Endereço: bits 7 - 0

# Instructions (instruções)

ADD:   0000 </br>
SUB:   0001 </br>
AND:   0010 </br>
OR:    0011 </br>
NOT:   0100 </br>
CMP:   0101 </br>
MOV:   0110 </br>
OUT:   0111 </br>
JMP:   1000 </br>
JEQ:   1001 </br>
JGR:   1010 </br>
STORE: 1011 </br>
LOAD:  1100 </br>
IN:    1101 </br>
WAIT:  1110 / 1111
