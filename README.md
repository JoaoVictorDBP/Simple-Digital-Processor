# Simple-Digital-Processor (processador digital simples)
Trabalho Final: consiste em um processador digital simples implementado com máquinas de estado para a disciplina Laboratório de Sistemas Digitais. </br>
Visão geral: o processador, criado em VHDL, utiliza as entradas de uma placa FPGA do tipo DE2-115 e lê um arquivo de memória do tipo “.mif” onde há 256 palavras de 8 bits para executar instruções.
Integrantes:
* João Victor De Bortoli Prado
* Samuel Sandoval Bonachela
* Lucas Rodriges Baptista

# Word-Structure (estrutura da palavra):

Palavra de 16 bits:

00000000 (15 - 8) </br>
00000000 (7 - 0)

* Instrução: bits 15 - 12 </br>
* Inteiro (1) / Registrador (0): bit 11 </br>
* Registrador 1 (recebe): bits 10 - 9 </br>
* Registrador 2 (envia): bits 8 - 7 </br>
* Inteiro / Endereço: bits 7 - 0

Registrador A: 00 </br>
Registrador B: 01 </br>
Registrador R: 10

# Instructions (instruções)

* 0000 - ADD </br>
* 0001 - SUB</br>
* 0010 - AND</br>
* 0011 - OR </br>
* 0100 - NOT </br>
* 0101 - CMP </br>
* 0110 - MOV </br>
* 0111 - OUT </br>
* 1000 - JMP </br>
* 1001 - JEQ </br>
* 1010 - JGR </br>
* 1011 - STORE </br>
* 1100 - LOAD </br>
* 1101 - IN </br>
* 1110 - WAIT </br>
* 1111 - WAIT
