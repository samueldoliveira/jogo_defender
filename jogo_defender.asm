main:	lui $9, 0x1004

	addi $11, $0, 128 #tamanho colunas
	addi $12, $0, 64 #tamanho linhas
	
print:	lui $9, 0x1004
	addi $9, $9, 6200 #inicio da nave
	jal print_nave
	
	addi $15, $15, 1 #valor da posicao 1 da nave
	
	lui $9, 0x1004
	addi $9, $9, 15000 #inicio do alien
	jal print_alien
	
	addi $19, $19, 1 #valor da posicao 1 do alien
	
####################################################################
	#### Teclado
#####################################################################

LerTec:
                lw $16, 0xFFFF0000         # Checla tedclas
                blez $16, PulaTec          # Pula se nada for pressionado
                lw $14, 0xFFFF0004         # Guarda valor da tecla  em $14
                
ChecaBaixo:
                bne $14, 115, ChecaCima     # Testa se tecla pressionada foi 's'
              	beq $15, 1, PulaTec 	#se a seta estiver na posiÃ§ao 1, nao fazer nada
              	j       PulaTec 
 
ChecaCima:     beq $14, 100, posicao2 # Testa se tecla pressionada foi 'd'
 		j       PulaTec  
 		
posicao2: 	addi $15, $0, 2
 		beq $15, 2, pos2
 		j       PulaTec    
 
PulaTec:
                j LerTec
	
#####################################################################
	#FIM
#####################################################################		
fim:
	addi $2, $0, 10
	syscall
#####################################################################
	#Print Setas
#####################################################################	
		
	
pos2:
	#Apaga a nave
	lui $9, 0x1004
	addi $9, $9, 6644 #local onde comeca a desenhar a nave preta
	jal print_navepreta
	
	addi $15, $0, 1
	
	lui $9, 0x1004
	addi $9, $9, 6000 #local onde comeÃ§ar a imprimir a nave
	jal print_nave
	
	addi $15, $0, 3
	
	j LerTec
	
	


############## nave

print_nave:

	add $30, $0, $31

#linha1: 
	addi $9, $9, 496 #começa na coluna 13

		
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	

#linha2:
	addi $9, $9, 500 #passa para a proxima linha
	
	
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	

#linha3:
	addi $9, $9, 480 #passa para a proxima linha

	
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinza_claro
	jal cinza_claro
	
	
	
#linha4:
	addi $9, $9, 468 #passa para a proxima linha


	jal cinza_escuro
	jal cinza_escuro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	
#linha5:
	addi $9, $9, 456 #passa para a proxima linha


	jal amareloClaro
	jal amareloClaro
	jal cinza_claro
	jal cinza_claro
	jal cinza_claro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	jal vermelho
	
	
#linha6:
	addi $9, $9, 452 #passa para a proxima linha

	
	jal amareloClaro
	jal amareloClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinza_escuro
	jal azul
	jal azul
	jal azul
	jal azul
	jal azul
	jal cinza_escuro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	jal vermelho
	jal vermelho
	

#linha7:
	addi $9, $9, 448 #passa para a proxima linha


	
	jal amareloClaro
	jal amareloClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	jal vermelho

#linha8:
	addi $9, $9, 456 #passa para a proxima linha


	jal cinza_escuro
	jal cinza_escuro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	
	
#linha9:
	addi $9, $9, 460 #passa para a proxima linha

	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	
	
	
#linha10:
	addi $9, $9, 468 #passa para a proxima linha

	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	
	
	
#linha11:
	addi $9, $9, 476 #passa para a proxima linha

	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	


####################
### fim da nave
	jr $30
	
print_alien:

	add $30, $0, $31

#linha1: 
	addi $9, $9, 300 #começa na coluna 13

	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	

#linha2:
	addi $9, $9, 484 #passa para a proxima linha
	
	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	

#linha3:
	addi $9, $9, 476 #passa para a proxima linha

	
	jal verde
	jal verde
	jal verde
	jal cinza_escuro
	jal verde
	jal verde
	jal cinza_escuro
	jal verde
	jal verde
	jal verde
	
	
	
#linha4:
	addi $9, $9, 468 #passa para a proxima linha


	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	
#linha5:
	addi $9, $9, 464 #passa para a proxima linha


	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde

	
#linha6:
	addi $9, $9, 468 #passa para a proxima linha

	
	jal verde
	jal verde
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal cinza_escuro
	jal verde
	jal verde
	

#linha7:
	addi $9, $9, 476 #passa para a proxima linha

	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde

#linha8:
	addi $9, $9, 476 #passa para a proxima linha

	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	
	
#linha9:
	addi $9, $9, 468 #passa para a proxima linha


	jal verde
	jal verde
	jal preto
	jal preto
	jal verde
	jal verde
	jal verde
	jal verde
	jal preto 
	jal preto
	jal verde
	jal verde
	
	
	
#linha10:
	addi $9, $9, 464 #passa para a proxima linha


	jal verde
	jal preto
	jal preto
	jal verde
	jal verde
	jal preto
	jal preto
	jal verde
	jal verde
	jal preto
	jal preto
	jal verde
	
	
	
#linha11:
	addi $9, $9, 464 #passa para a proxima linha

	jal preto
	jal preto
	jal preto
	jal verde
	jal preto
	jal preto
	jal preto
	jal preto
	jal verde
	jal preto
	jal preto
	jal preto
	


####################
### fim do alien
	jr $30
####################
####################################################################################################################
#### nave_preta
####################################################################################################################

print_navepreta:

	add $30, $0, $31

#linha1: 
	addi $9, $9, 52 #começa na coluna 13

		
	jal preto
	jal preto
	jal preto
	jal preto
	

#linha2:
	addi $9, $9, 500 #passa para a proxima linha
	
	
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	

#linha3:
	addi $9, $9, 480 #passa para a proxima linha

	
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	
	
	
#linha4:
	addi $9, $9, 468 #passa para a proxima linha


	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	
#linha5:
	addi $9, $9, 456 #passa para a proxima linha


	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	
	
#linha6:
	addi $9, $9, 452 #passa para a proxima linha

	
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	

#linha7:
	addi $9, $9, 448 #passa para a proxima linha


	
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto

#linha8:
	addi $9, $9, 456 #passa para a proxima linha


	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	
	
#linha9:
	addi $9, $9, 460 #passa para a proxima linha

	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	
	
	
#linha10:
	addi $9, $9, 468 #passa para a proxima linha

	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	jal preto
	
	
	
#linha11:
	addi $9, $9, 476 #passa para a proxima linha

	jal preto
	jal preto
	jal preto
	jal preto

	jr $30
	
#################fim da nave preta
#####################################################################
	#COR
#####################################################################

preto:
	addi $10, $0, 0x000000 #cor: preto
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	
cinza_claro:
	
	addi $10, $0, 0xd2d3d5 #cor: cinza claro
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	
cinza_escuro:
	
	addi $10, $0, 0x6d6e72 #cor: cinza escuro
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	

vermelho:
	#vermelho para o foguete
	addi $10, $0, 0xff0000 #cor: vermelho
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
cinzaClaro:
	#cinza clarinho
	addi $10, $0, 0xcccccc
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31

amareloClaro:
	addi $10, $0, 0xffff00
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
azul:
	addi $10, $0, 0x00ccff
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
verde:
	addi $10, $0, 0x556b2f
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	

	
