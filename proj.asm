.data																							# espaco de dados declaracao
	pulaLinha:			.asciiz		"\n"														# print pula linha
	doisPontos:			.asciiz		": "														# print dois pontos
	ponto:				.asciiz		". "														# print ponto
	tab:				.asciiz		"\t\t"														# print tab
	timesPrint:			.asciiz		"Times"														# print times
	jogosPrint:			.asciiz		"Jogos"														# print jogos
	vitoriasPrint:		.asciiz		"Vitorias"													# print vitorias
	derrotasPrint:		.asciiz		"Derrotas"													# print derrotas
	digSenhaInicial: 	.asciiz		"Digite uma senha para o sistema(maximo 19 caracteres): "	# print senha inicial do sistema
	digSenha: 			.asciiz		"Digite a senha para acessar o sistema: "					# print para digitar a senha
	digitarSenha:		.asciiz		"1 - Entrar no sistema"										# print menu
	sair:				.asciiz		"2 - Sair\n"												# print menu sair
	func:				.asciiz		"O que deseja fazer: "										# print selecionar funcao
	sairMsg:			.asciiz		"\nPrecione Enter para sair:" 								# print saida do sistema
	loginMsg:			.asciiz		"Login efetuado com sucesso\n"								# print login
	op1:				.asciiz		"1 - Registrar times"										# opcao 1 do menu print
	op2:				.asciiz		"2 - Registrar resultado"									# opcao 2 do menu print
	op3:				.asciiz		"3 - Editar as informações dos times"						# opcao 3 do menu print
	op4:				.asciiz		"4 - Gerar o resultado do campeonato, da fase eliminatória"	# opcao 4 do menu print
	op0:				.asciiz		"5 - Logout"												# opcao 0 do menu print
	cadastroTimeNome:	.asciiz		"Digite o nome (19 caracteres) do time "					# print cadastro times
	nome1:				.asciiz		"Digite o numero do primeiro time: "						# print pegar numero primeiro time
	nome2:				.asciiz		"Digite o numero do segundo time: "							# print pegar numero segundo time
	nome:				.asciiz		"Digite o numero do time: "									# print pegar numero do time
	nomePrint:			.asciiz		"Digite o novo nome (19 caracteres) do time: "				# print alterar nome
	quemGanhou:			.asciiz		"Quem ganhou (1 ou 2)? "									# print pegar ganhador
	jaJogou:			.asciiz		"Partida ja jogada, edite a partida!"						# print partida ja jogada
	naoJogou:			.asciiz		"Partida nao jogada, jogue partida!"						# print partida nao jogada
	apagouResultado:	.asciiz		"Partida apagada!"											# print partida apagada
	naoTimes:			.asciiz		"Necessario cadastrar os times primeiro"					# print times nao cadastrados
	t1:					.asciiz		"1. "														# print pegar ganhador
	t2:					.asciiz		"2. "														# print pegar ganhador
	timesCadastrado:	.asciiz		"Ja foi realizado o cadastro dos times"						# print times ja cadastrados
	alterarNome:		.asciiz		"1 - Alterar nome do time"									# print submenu
	alterarResultado:	.asciiz		"2 - Alterar resultado de um jogo"							# print submenu
	apagarJogo:			.asciiz		"3 - Apagar jogo"											# print submenu
	voltar:				.asciiz		"4 - Voltar"												# print submenu
	semifinal:			.asciiz		"<- semifinal"												# print semifinal
	rebaixado:			.asciiz		"<- rebaixado"												# print rebaixado
	desclassificado:	.asciiz		"<- desclassificado"										# print desclassificado
	quartas:			.asciiz		"<- quartas de final"										# print quartas de final
	regTimes:			.byte		0															# flag verificacao se o nome dos times foi cadastrado
	senha:				.space		20															# criacao memoria salvar senha
	senhaAux:			.space		20															# auxiliar verificacao senha
	timesNome:			.space		400															# nome dos times
	nJogos:				.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# numero de jogos
	vitorias:			.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# numero de vitorias
	derrotas:			.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# numero de derrotas
	jogos:				.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 1  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 2  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 3  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 4  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 5  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 6  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 7  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 8  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 9  jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
						.word		0, 0, 0, 0, 0, 0, 0, 0, 0, 0								# time 10 jogou contra qual time // 0 - nao jogou | 1 - ganhou | 2 - perdeu
.text
.globl main

main:																							# inicio programa principal
	addi	$sp, $sp, -4																		# abre um espaco na pilha
	sw		$ra, 0($sp)																			# guarda o valor de retorno
	jal		setSenha																			# chama a funcao para criar uma senha para o sistema
logoutLoop:																						# volta para o menu
	jal		login																				# chamada ao login do sistema
	addi	$s0, $0, 2																			# move o valor 2 para o registrador s0
	beq		$v0, $s0, finalOut																	# pula para finalizar o programa
	jal		menu																				# chama o menu principal
	addi	$s0, $0, 5																			# move o valor 5 para o registrador s0
	beq		$v0, $s0, logoutLoop																# jump para o submenu de login
finalOut:																						# finaliza o programa
	lw		$ra, 0($sp)																			# restaura o valor de retorno
	addi	$sp, $sp, 4																			# restaura o topo da pilha
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, sairMsg																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li 		$v0, 5 																				# Apenas para esperar um [ENTER]
	syscall																						# Chamada do sistema
	jr 		$ra																					# retorna para quem chamou
	
setSenha:																						# chamada funcao setSenha, responsavel por guardar uma senha para o programa
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, digSenhaInicial																# Parametro (string a ser escrita)
	syscall																						# chamada do sistema
	li		$a1, 20																				# limita a quantidade de caracteres de entrada para 19 + 1 (\0) finalizacao de string
	la		$a0, senha																			# carrega o endereco de senha em a0
	li		$v0, 8																				# Parametro (string a ser lida) e salva a senha
	syscall																						# Chamada do sistema
	jr		$ra																					# retorna para quem chamou
	
login:																							# funcao login, responsavel por verificar se o usuario pode ou nao entrar no sistema, caso possa, e redirecionado ao menu principal
	addi	$sp, $sp, -4																		# abre um espaco na pilha
	sw		$ra, 0($sp)																			# guarda o valor de retorno
notEqual:																						# caso a senha nao seja igual ou a opcao do menu nao existir, volta aqui para ser printado novamente
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, digitarSenha																	# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, sair																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, func																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 5																				# leitura opcao do menu
	syscall																						# chamada do sistema
	addi	$s0, $0, 2																			# move o valor 2 para o registrador s0
	beq		$v0, $s0, out																		# saida do sistema (menu
	addi	$t0, $0, 1																			# usado para comparacao do menu 1 = digitar senha para login
	bne		$v0, $t0, notEqual																	# caso nao seja nenhuma das opcoes acima 0 ou 1, printa o menu novamente ate que tenha uma entrada valida	
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, digSenha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema		
	addi	$t0, $0, 20																			# auxiliar loop
	add		$t1, $0, $0																			# zera o registrador t1
	la		$t2, senhaAux																		# carrega no registrador t2 o endereco de senhaAux
	add		$t3, $0, $0																			# zera o registrador t3
clrAux:																							# loop limpa senhaAux
	sb 		$t3, 0($t2)																			# salva 0 na posicao t2
	addi	$t1, $t1, 1																			# contador loop incrementado
	addi	$t2, $t2, 1																			# anda 1 posicao no string senhaAux
	bne		$t0, $t1, clrAux																	# realiza o loop ate o final da string
	li		$a1, 20																				# limita a entrada de caracteres para 19 + 1 \0
	la		$a0, senhaAux																		# auxiliar utilizado para salvar a senha e facilitar na comparacao
	li		$v0, 8																				# Parametro (string a ser lida) e salva a senha
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	la		$t0, senha																			# carrega a senha no registrador t0
	la		$t1, senhaAux																		# carrega a senha digitada no registrador t1
	addi	$t5, $0, 20																			# variavel auxiliar utilizada para loop dos 19 caracteres + 1 '\0' 
	add		$t2, $0, $0																			# zera variavel t2 para o loop
	add		$t3, $0, $0																			# zera variavel t3 para o loop
	add		$t4, $0, $0																			# zera variavel t4 para o loop
	add		$t6, $0, $0																			# zera variavel t6 para o loop
stringCompare:																					# loop para comparacao de strings
	lb 		$t2, 0($t0)																			# carrega o 1 byte da senha
	lb 		$t3, 0($t1)																			# carrega o 1 byte do auxiliar
	sub 	$t4, $t2, $t3																		# subtrai os bytes da senha
	bne		$t4, $0, notEqual																	# verifica se os bytes da senha sao iguais
	addi 	$t0, $t0, 1																			# vai para a proxima posicao da senha
	addi 	$t1, $t1, 1																			# vai para a proxima posicao da senhaAux
	addi	$t6, $t6, 1																			# soma 1 em t6 para verificar se chegou ao final da string
	beqz	$t1, msg																			# chama a mensagem de login
	bne		$t5, $t6, stringCompare																# compara para ver se finalizou a string
msg:																							# print mensagem de login
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, loginMsg																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
out:																							# saida submenu
	lw		$ra, 0($sp)																			# restaura o valor de retorno
	addi	$sp, $sp, 4																			# restaura o topo da pilha
	jr		$ra																					# retorna para quem chamou
	
menu:																							# funcao menu de opcoes
	addi	$sp, $sp, -4																		# abre um espaco na pilha
	sw		$ra, 0($sp)																			# guarda o valor de retorno
loopMenu:																						# loop para acessar outra funcao do menu
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, op1																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, op2																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, op3																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, op4																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, op0																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, pulaLinha																		# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 4																				# codigo SysCall p/ escrever strings
	la		$a0, func																			# Parametro (string a ser escrita)
	syscall																						# Chamada do sistema
	li		$v0, 5																				# leitura opcao do menu
	syscall																						# chamada do sistema
	addi	$t0, $0, 1																			# move o valor 1 para o registrador t0
	beq		$v0, $t0, m1																		# jump utilizado para chamar a 1 opcao do menu
	addi	$t0, $0, 2																			# move o valor 2 para o registrador t0
	beq		$v0, $t0, m2																		# jump utilizado para chamar a 2 opcao do menu
	addi	$t0, $0, 3																			# move o valor 3 para o registrador t0
	beq		$v0, $t0, m3																		# jump utilizado para chamar a 3 opcao do menu
	addi	$t0, $0, 4																			# move o valor 4 para o registrador t0
	beq		$v0, $t0, m4																		# jump utilizado para chamar a 4 opcao do menu
	addi	$s0, $0, 5																			# coloca o valor de retorno em s0 para efetuar comparacao
	bne		$v0, $s0, loopMenu																	# loop menu continuar logado
	beq		$v0, $s0, endMenu																	# pula para o fim da funcao
m1:																								# local jump chamar funcao 1
	jal		registrarTimes																		# chama a funcao de registro de times
	j		loopMenu																			# volta para o loop do menu
m2:																								# local jump chamar funcao 2
	jal		registrarResultados																	# chama a funcao de registro de resultados
	j		loopMenu																			# volta para o loop do menu
m3:																								# local jump chamar funcao 3
	jal		editarInformacoes																	# chama a funcao de editar informações
	j		loopMenu																			# volta para o loop do menu
m4:																								# local jump chamar funcao 4
	jal		gerarResultados																		# chama a funcao de gerarResultados
	j		loopMenu																			# volta para o loop do menu
endMenu:																						# chamada a saida do menu
	move	$v0, $s0																			# guarda o valor de retorno em v0
	lw		$ra, 0($sp)																			# restaura o valor de retorno
	addi	$sp, $sp, 4																			# restaura o topo da pilha
	jr		$ra																					# volta para quem chamou
	
registrarTimes:																					# funcao registrar times
	lb		$t0, regTimes($0)																	# carrega o valor do byte regTimes para t0
	bne		$t0, $0, printCadastrado															# compara e realiza o jump (chamada funcao print e retorna)
	addi 	$s0, $0, 11																			# fim variavel i
	addi	$t0, $0, 1																			# inicio variavel i
	addi	$t2, $0, 20																			# adiciona 20 ao registrador t2	
loopCadastroTimes:																				# inicio for
	li		$v0, 4																				# codigo escrita de strings
	la 		$a0, cadastroTimeNome																# texto que ira ser escrito
	syscall																						# chamada do sistema
	li		$v0, 1																				# codigo escrita de inteiros
	move	$a0, $t0																			# numero que ira ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, doisPontos																		# texto que ira ser escrito
	syscall																						# chamada do sistema
	li		$v0, 8																				# codigo leitura de strings
	la		$a0, timesNome																		# carrega endereco de momoria que ira ser escrita
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	mul		$t1, $t1, $t2																		# multiplica por 20 o valor de t2 para encontrar a posicao de momoria que sera escrita
	add		$a0, $a0, $t1																		# adiciona ao endereco de momoria os bytes que serao pulados
	li		$a1, 20																				# limita a entrada para 20 caracteres (19 podendo ser escritos)
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, pulaLinha																		# texto que ira ser escrito
	syscall																						# chamada do sistema
	addi	$t0, $t0, 1																			# i += 1
	bne		$s0, $t0, loopCadastroTimes															# for(i=1; i != 11; i++)
	addi	$t0, $0, 1																			# move o valor 1 para o registrador t0
	sb		$t0, regTimes($0)																	# salva o valor de t0 em regTimes
registrarMenu:																					# volta para o menu
	jr		$ra																					# volta para quem chamou
printCadastrado:																				# print times ja cadastrados
	li		$v0, 4																				# parametro para escrita de string
	la		$a0, timesCadastrado																# carrega a string para ser escrita em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# parametro para escrita de string
	la		$a0, pulaLinha																		# carrega a string para ser escrita em a0
	syscall																						# chamada do sistema
	j		registrarMenu																		# retorna para o menu
	
registrarResultados:																			# funcao de registrar resultados
	lb		$t0, regTimes($0)																	# carrega o valor de regTimes em t0
	beq		$t0, $0, naoAceito																	# compara o resultado de t0 com 0
	addi 	$s0, $0, 11																			# fim variavel i
	addi	$t0, $0, 1																			# inicio variavel i
	addi	$t2, $0, 20																			# adiciona 20 ao registrador t2
loopPrintTimes:																					# loop print nome times
	li		$v0, 1																				# codigo escrita inteiros
	move	$a0, $t0																			# move o valor de i para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, ponto																			# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, timesNome																		# carrega o endereco de memoria em a0
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	mul		$t1, $t1, $t2																		# multiplica por 20 o valor de t2 para encontrar a posicao de momoria que sera escrita
	add		$a0, $a0, $t1																		# adiciona ao endereco de momoria os bytes que serao pulados
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	addi	$t0, $t0, 1																			# i += 1
	bne		$s0, $t0, loopPrintTimes															# for(i = 1; i != 11; i+= 1)
entInvResult1:																					# entrada invalida jump primeira entrada
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome1																			# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s0, $v0, -1																		# pega o numero digita e salva em s0 -1 (encontrar a posicao na matriz)
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvResult1																# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvResult1																# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump
entInvResult2:																					# entrada invalida jump segunda entrada
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome2																			# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s1, $v0, -1																		# pega o numero digita e salva em s1 -1 (encontrar a posicao na matriz)
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvResult2																# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvResult2																# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump
	beq		$s0, $s1, entInvResult1																# verifica se os times sao o mesmo, caso sejam, realiza o jump
	addi	$t0, $0, 10																			# move 10 para o registrador t0 (encontrar a posicao na matriz)
	mul		$t0, $t0, $s0																		# multiplica o valor de t0 por s0 (encontrar a posicao na matriz)
	add		$t0, $t0, $s1																		# soma o valor de t0 com s1 (encontrar a posicao na matriz)
	sll		$s2, $t0, 2																			# multiplica por 4 para encontrar a posicao na matriz
	addi	$t0, $0, 10																			# move 10 para o registrador t0 (encontrar a posicao na matriz)
	mul		$t0, $t0, $s1																		# multiplica o valor de t0 por s1 (encontrar a posicao na matriz)
	add		$t0, $t0, $s0																		# soma o valor de t0 com s0 (encontrar a posicao na matriz)
	sll		$s3, $t0, 2																			# multiplica por 4 para encontrar a posicao na matriz
	lw		$t0, jogos($s2)																		# pega da matriz o valor armazenado na posicao do jogo
	bne		$t0, $0, jaJogado																	# verifica a partir da posicao do jogo se a partida foi jogada ou nao, caso tenha cido, retorna ao menu
	li		$v0, 4																				# codigo escrita string
	la		$a0, t1																				# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	mul		$t0, $s0, 20																		# multiplica a posicao do time1 por 20, para encontrar seu nome
	la		$a0, timesNome																		# carrega o endereco a ser escrito
	add		$a0, $a0, $t0																		# soma o endereco dos times com a posicao do nome desejado
	li		$v0, 4																				# codigo escrita string
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, t2																				# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	mul		$t0, $s1, 20																		# multiplica a posicao do time1 por 20, para encontrar seu nome
	la		$a0, timesNome																		# carrega o endereco a ser escrito
	add		$a0, $a0, $t0																		# soma o endereco dos times com a posicao do nome desejado
	li		$v0, 4																				# codigo escrita string
	syscall																						# chamada do sistema
invalidoGanhador:																				# caso o numero do ganhador nao seja 1 ou 2 realiza o loop ate ser digitado corretamente
	li		$v0, 4																				# codigo escrita string
	la		$a0, quemGanhou																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura de inteiros
	syscall																						# chamada do sistema
	addi	$t0, $0, 1																			# move o valor 1 para t0
	beq		$v0, $t0, t1Win																		# caso o time1 venca, realiza o jump
	addi	$t1, $0, 2																			# move o valor 2 para t1
	beq		$v0, $t1, t2Win																		# caso o time2 venca, realiza o jump
	j		invalidoGanhador																	# loop para entrada invalida != 1 ou != 2
t1Win:																							# time1 campeao
	addi	$t0, $0, 1																			# move para t0 o valor 1
	sw		$t0, jogos($s2)																		# salva no time1 o valor 1 referente a vitoria
	addi	$t0, $0, 2																			# move para t0 o valor 2
	sw		$t0, jogos($s3)																		# salva no time2 o valor 2 referente a derota
	sll		$s0, $s0, 2																			# pega a posicao de s0 e multiplica por 4
	lw		$t0, nJogos($s0)																	# le a quantidade de jogos do time1
	addi	$t0, $t0, 1																			# adiciona 1, pois foi jogado mais 1 jogo
	sw		$t0, nJogos($s0)																	# salva a quantidade de jogos do time1 + 1
	lw		$t0, vitorias($s0)																	# carrega o numero de vitorias do time1 em t0
	addi	$t0, $t0, 1																			# adiciona 1 no numero de vitorias do time1
	sw		$t0, vitorias($s0)																	# salva o novo numero de vitorias do time 1
	sll		$s1, $s1, 2																			# multiplica a posicao do time2 por 4
	lw		$t0, nJogos($s1)																	# carrega o sua quantidade de jogos em t0
	addi	$t0, $t0, 1																			# adiciona um jogo a quantidade de jogos
	sw		$t0, nJogos($s1)																	# salva a quantidade de jogos do time2 + 1
	lw		$t0, derrotas($s1)																	# carrega o numero de derrotas do time2 em t0
	addi	$t0, $t0, 1																			# adiciona 1 ao numero de derrotas to time2
	sw		$t0, derrotas($s1)																	# salva o novo numero de derrotas do time2
	j 		fimResultados																		# vai para o fim da funcao
t2Win:																							# time2 campeao
	addi	$t0, $0, 1																			# move o valor 1 para t0
	sw		$t0, jogos($s3)																		# salva no time2 o valor 1 referente a vitoria
	addi	$t0, $0, 2																			# move o valor 2 para t0
	sw		$t0, jogos($s2)																		# salva no time1 o valor 2 referente a derota
	sll		$s0, $s0, 2																			# pega a posicao de s0 e multiplica por 4
	lw		$t0, nJogos($s0)																	# le a quantidade de jogos do time1
	addi	$t0, $t0, 1																			# adiciona 1, pois foi jogado mais 1 jogo
	sw		$t0, nJogos($s0)																	# salva a quantidade de jogos do time1 + 1
	lw		$t0, derrotas($s0)																	# carrega o numero de derrotas do time1 em t0
	addi	$t0, $t0, 1																			# adiciona 1 ao numero de derrotas
	sw		$t0, derrotas($s0)																	# salva o novo numero de derrotas
	sll		$s1, $s1, 2																			# pega a posicao de s1 e multiplica por 4
	lw		$t0, nJogos($s1)																	# le a quantidade de jogos do time2
	addi	$t0, $t0, 1																			# adiciona 1, pois foi jogado mais 1 jogo
	sw		$t0, nJogos($s1)																	# salva a quantidade de jogos do time2 + 1
	lw		$t0, vitorias($s1)																	# carrega o numero de vitorias to time2 em t0
	addi	$t0, $t0, 1																			# adiciona 1 ao numero de vitorias do time2
	sw		$t0, vitorias($s1)																	# salva o novo numero de memorias do time2
	j 		fimResultados																		# vai para o fim da funcao
fimResultados:																					# fim da funcao
	jr		$ra																					# volta para quem chamou
jaJogado:																						# caso ja tenha cido jogado, printa e retorna
	li		$v0, 4																				# codigo escrita string
	la		$a0, jaJogou																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	j		fimResultados																		# chama o fim da funcao
naoAceito:																						# jump caso o nome dos times nao tenham cido cadastrados
	li		$v0, 4																				# parametro escrita string
	la		$a0, naoTimes																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# parametro escrita string
	la		$a0, pulaLinha																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		fimResultados																		# chama o fim da funcao
	
editarInformacoes:																				# funcao de editar informações
	lb		$t0, regTimes($0)																	# carrega em t0 0 valor de regTimes
	beq		$t0, $0, printNaoEditar																# compara o valor de t0 com 0 (pula caso nao exista times cadastrados)
	addi	$sp, $sp, -4																		# abre uma nova posicao na pilha
	sw		$ra, 0($sp)																			# salva o valor de retorno na pilha
loopEditarMenu:																					# loop subMenu editar
	li 		$v0, 4																				# codigo escrita de strings
	la		$a0, pulaLinha																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, alterarNome																	# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li 		$v0, 4																				# codigo escrita de strings
	la		$a0, pulaLinha																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, alterarResultado																# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li 		$v0, 4																				# codigo escrita de strings
	la		$a0, pulaLinha																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, apagarJogo																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li 		$v0, 4																				# codigo escrita de strings
	la		$a0, pulaLinha																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, voltar																			# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, pulaLinha																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita de strings
	la		$a0, func																			# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 5																				# leitura de inteiros
	syscall																						# chamada do sistema
	addi	$t0, $0, 1																			# move o valor 1 para o registrador t0
	beq		$v0, $t0, em1																		# pula caso a opcao 1 seja selecionada
	addi	$t0, $0, 2																			# move o valor 2 para o registrador t0
	beq		$v0, $t0, em2																		# pula caso a opcao 2 seja selecionada
	addi	$t0, $0, 3																			# move o valor 3 para o registrador t0
	beq		$v0, $t0, em3																		# pula caso a opcao 3 seja selecionada
	addi	$t0, $0, 4																			# move o valor 4 para o registrador t0
	bne		$v0, $t0, loopEditarMenu															# caso nao corresponda a nenhum dos itens do menu, realiza o jump
	j		voltaMenu																			# fim da funcao
em1:																							# opcao 1
	jal		trocaNome																			# chama a funcao de troca de nome
	j		loopEditarMenu																		# volta ao loop do submenu
em2:																							# opcao 2
	jal		trocaResultado																		# chama a funcao de alteracao de resultado
	j		loopEditarMenu																		# volta ao loop do submenu
em3:																							# opcao 3
	jal		removeResultado																		# chama a funcao de remover jogo
	j		loopEditarMenu																		# volta ao loop do submenu
voltaMenu:																						# volta ao menu principal
	lw		$ra, 0($sp)																			# recupera o valor de retorno
	addi	$sp, $sp, 4																			# remove uma posicao na pilha
editarReturn:																					# retorno caso invalido
	jr		$ra																					# volta para quem chamou
printNaoEditar:																					# print caso nao seja possivel acessar essa funcao
	li		$v0, 4																				# funcao escrita string
	la		$a0, naoTimes																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# funcao escrita string
	la		$a0, pulaLinha																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		editarReturn																		# chama o retorno
	
trocaNome:																						# funcao de troca de nome
	addi 	$s0, $0, 11																			# fim variavel i
	addi	$t0, $0, 1																			# inicio variavel i
	addi	$t2, $0, 20																			# adiciona 20 ao registrador t2
loopPrintTimesTroca:																			# loop print nome times
	li		$v0, 1																				# codigo escrita inteiros
	move	$a0, $t0																			# move o valor de i para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, ponto																			# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, timesNome																		# carrega o endereco de memoria em a0
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	mul		$t1, $t1, $t2																		# multiplica por 20 o valor de t2 para encontrar a posicao de momoria que sera escrita
	add		$a0, $a0, $t1																		# adiciona ao endereco de momoria os bytes que serao pulados
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	addi	$t0, $t0, 1																			# i += 1
	bne		$s0, $t0, loopPrintTimesTroca														# for(i = 1; i != 11; i+= 1)
entInvTrocaNome:																				# numero troca de nome invalido
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome																			# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s0, $v0, -1																		# salva o valor digitado -1
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvTrocaNome															# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvTrocaNome															# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump
	li		$v0, 4																				# codigo escrita string
	la		$a0, nomePrint																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	la		$a0, timesNome																		# carrega o endereco do nome dos times
	addi	$t0, $0, 20																			# carrega o valor 20 em t0
	mul		$s0, $s0, $t0																		# multiplica 20 pela posicao do nome -1
	add		$a0, $a0, $s0																		# adiciona a posicao ao endereco do nome dos times
	li		$v0, 8																				# codigo leitura de string
	li		$a1, 20																				# limita a entrada para 19 caracteres + 1 \0
	syscall																						# chamada do sistema
	jr		$ra																					# volta para quem chamou
	
trocaResultado:																					# funcao de alteracao de resultado
	addi 	$s0, $0, 11																			# fim variavel i
	addi	$t0, $0, 1																			# inicio variavel i
	addi	$t2, $0, 20																			# adiciona 20 ao registrador t2
loopPrintTimesTrocaResultado:																	# loop print nome times
	li		$v0, 1																				# codigo escrita inteiros
	move	$a0, $t0																			# move o valor de i para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, ponto																			# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, timesNome																		# carrega o endereco de memoria em a0
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	mul		$t1, $t1, $t2																		# multiplica por 20 o valor de t2 para encontrar a posicao de momoria que sera escrita
	add		$a0, $a0, $t1																		# adiciona ao endereco de momoria os bytes que serao pulados
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	addi	$t0, $t0, 1																			# i += 1
	bne		$s0, $t0, loopPrintTimesTrocaResultado												# for(i = 1; i != 11; i+= 1)	
entInvAlterarResult1:																			# entrada invalida jump primeira entrada
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome1																			# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s0, $v0, -1																		# pega o numero digita e salva em s0 -1 (encontrar a posicao na matriz)
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvAlterarResult1														# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvAlterarResult1														# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump	
entInvAlterarResult2:																			# entrada invalida jump segunda entrada
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome2																			# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s1, $v0, -1																		# pega o numero digita e salva em s1 -1 (encontrar a posicao na matriz)
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvAlterarResult2														# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvAlterarResult2														# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump
	beq		$s0, $s1, entInvAlterarResult1														# verifica se os times sao o mesmo, caso sejam, realiza o jump
	addi	$t0, $0, 10																			# move 10 para o registrador t0 (encontrar a posicao na matriz)
	mul		$t0, $t0, $s0																		# multiplica o valor de t0 por s0 (encontrar a posicao na matriz)
	add		$t0, $t0, $s1																		# soma o valor de t0 com s1 (encontrar a posicao na matriz)
	sll		$s2, $t0, 2																			# multiplica por 4 para encontrar a posicao na matriz
	addi	$t0, $0, 10																			# move 10 para o registrador t0 (encontrar a posicao na matriz)
	mul		$t0, $t0, $s1																		# multiplica o valor de t0 por s1 (encontrar a posicao na matriz)
	add		$t0, $t0, $s0																		# soma o valor de t0 com s0 (encontrar a posicao na matriz)
	sll		$s3, $t0, 2																			# multiplica por 4 para encontrar a posicao na matriz
	lw		$t0, jogos($s2)																		# pega da matriz o valor armazenado na posicao do jogo
	beq		$t0, $0, jaJogadoTroca																# verifica a partir da posicao do jogo se a partida foi jogada ou nao, caso nao tenha cido, retorna ao menu
	li		$v0, 4																				# codigo escrita string
	la		$a0, t1																				# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	mul		$t0, $s0, 20																		# multiplica a posicao do time1 por 20, para encontrar seu nome
	la		$a0, timesNome																		# carrega o endereco a ser escrito
	add		$a0, $a0, $t0																		# soma o endereco dos times com a posicao do nome desejado
	li		$v0, 4																				# codigo escrita string
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, t2																				# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	mul		$t0, $s1, 20																		# multiplica a posicao do time1 por 20, para encontrar seu nome
	la		$a0, timesNome																		# carrega o endereco a ser escrito
	add		$a0, $a0, $t0																		# soma o endereco dos times com a posicao do nome desejado
	li		$v0, 4																				# codigo escrita string
	syscall																						# chamada do sistema
invalidoGanhadorTroca:																			# caso o numero do ganhador nao seja 1 ou 2 realiza o loop ate ser digitado corretamente
	li		$v0, 4																				# codigo escrita string
	la		$a0, quemGanhou																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura de inteiros
	syscall																						# chamada do sistema
	addi	$t0, $0, 1																			# move o valor 1 para t0
	beq		$v0, $t0, t1WinTroca																# caso o time1 venca, realiza o jump
	addi	$t1, $0, 2																			# move o valor 2 para t1
	beq		$v0, $t1, t2WinTroca																# caso o time2 venca, realiza o jump
	j		invalidoGanhadorTroca																# loop para entrada invalida != 1 ou != 2
t1WinTroca:																						# time1 campeao
	sll		$s0, $s0, 2																			# multiplica por 4 a posicao 1 digitada
	sll		$s1, $s1, 2																			# multiplica por 4 a posicao 2 digitada
	addi	$t0, $0, 1																			# move para t0 o valor 1
	sw		$t0, jogos($s2)																		# salva no time1 o valor 1 referente a vitoria
	lw		$t0, derrotas($s0)																	# carrega o numero de derrotas do time1
	addi	$t0, $t0, -1																		# subtrai 1 derota do time1
	sw		$t0, derrotas($s0)																	# salva o novo numero de derrotas
	lw		$t0, vitorias($s0)																	# carrega o numero de vitorias do time1
	addi	$t0, $t0, 1																			# adiciona 1 votoria ao time1
	sw		$t0, vitorias($s0)																	# salva o nova numero de vitorias
	addi	$t0, $0, 2																			# move para t0 o valor 2
	sw		$t0, jogos($s3)																		# salva no time2 o valor 2 referente a derota
	lw		$t0, derrotas($s1)																	# carrega o numero de derrotas do time2
	addi	$t0, $t0, 1																			# adiciona 1 ao numero de derrotas
	sw		$t0, derrotas($s1)																	# salva o novo numero de derrotas
	lw		$t0, vitorias($s1)																	# carrega o numero de vitorias do time2
	addi	$t0, $t0, -1																		# subtrai 1 vitoria do time2
	sw		$t0, vitorias($s1)																	# salva o novo numero de vitorias
	j 		fimResultadosTroca																	# vai para o fim da funcao
t2WinTroca:																						# time2 campeao
	sll		$s0, $s0, 2																			# multiplica por 4 a posicao 1 digitada
	sll		$s1, $s1, 2																			# multiplica por 4 a posicao 2 digitada
	addi	$t0, $0, 1																			# move o valor 1 para t0
	sw		$t0, jogos($s3)																		# salva no time2 o valor 1 referente a vitoria
	lw		$t0, derrotas($s1)																	# carrega o numero de derrotas do time2
	addi	$t0, $t0, -1																		# subtrai 1 derrota do time2
	sw		$t0, derrotas($s1)																	# salva o novo numero de derrotas
	lw		$t0, vitorias($s1)																	# carrega o numero de vitorias do time2
	addi	$t0, $t0, 1																			# adiciona 1 vitoria ao time2
	sw		$t0, vitorias($s1)																	# salva o novo numero de vitorias
	addi	$t0, $0, 2																			# move o valor 2 para t0
	sw		$t0, jogos($s2)																		# salva no time1 o valor 2 referente a derota
	lw		$t0, derrotas($s0)																	# carrega o numero de derrotas do time1
	addi	$t0, $t0, 1																			# adiciona 1 derrota ao time1
	sw		$t0, derrotas($s0)																	# salva o nova numero de derrotas do time1
	lw		$t0, vitorias($s0)																	# carrega o numero de vitorias do time1
	addi	$t0, $t0, -1																		# subtrai 1 vitoria do time1
	sw		$t0, vitorias($s0)																	# salva o novo numero de vitorias do time1
	j 		fimResultadosTroca																	# vai para o fim da funcao
fimResultadosTroca:																				# fim da funcao
	jr		$ra																					# volta para quem chamou
jaJogadoTroca:																					# caso ja tenha cido jogado, printa e retorna
	li		$v0, 4																				# codigo escrita string
	la		$a0, naoJogou																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	j		fimResultadosTroca																	# chama o fim da funcao
	
removeResultado:																				# funcao de remocao de jogo
	addi 	$s0, $0, 11																			# fim variavel i
	addi	$t0, $0, 1																			# inicio variavel i
	addi	$t2, $0, 20																			# adiciona 20 ao registrador t2
loopPrintTimesApagarResultado:																	# loop print nome times
	li		$v0, 1																				# codigo escrita inteiros
	move	$a0, $t0																			# move o valor de i para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, ponto																			# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, timesNome																		# carrega o endereco de memoria em a0
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	mul		$t1, $t1, $t2																		# multiplica por 20 o valor de t2 para encontrar a posicao de momoria que sera escrita
	add		$a0, $a0, $t1																		# adiciona ao endereco de momoria os bytes que serao pulados
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	addi	$t0, $t0, 1																			# i += 1
	bne		$s0, $t0, loopPrintTimesApagarResultado												# for(i = 1; i != 11; i+= 1)
entInvRemoveResult1:																			# entrada invalida jump primeira entrada
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome1																			# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s0, $v0, -1																		# pega o numero digita e salva em s0 -1 (encontrar a posicao na matriz)
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvRemoveResult1														# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvRemoveResult1														# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump
entInvRemoveResult2:																			# entrada invalida jump segunda entrada
	li		$v0, 4																				# codigo escrita string
	la		$a0, nome2																			# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 5																				# codigo leitura inteiros
	syscall																						# chamada do sistema
	addi	$s1, $v0, -1																		# pega o numero digita e salva em s1 -1 (encontrar a posicao na matriz)
	addi	$t3, $0, 11																			# move o valor 11 para t3
	slt		$t3, $v0, $t3																		# verifica se a entrada e maior que 11
	beq		$t3, $0, entInvRemoveResult2														# realiza o jump para entrada novamente, caso seja maior que 10
	beq		$v0, $0, entInvRemoveResult2														# verifica se a entrada e diferente de 0, caso seja igual, realiza o jump
	beq		$s0, $s1, entInvRemoveResult1														# verifica se os times sao o mesmo, caso sejam, realiza o jump
	addi	$t0, $0, 10																			# move 10 para o registrador t0 (encontrar a posicao na matriz)
	mul		$t0, $t0, $s0																		# multiplica o valor de t0 por s0 (encontrar a posicao na matriz)
	add		$t0, $t0, $s1																		# soma o valor de t0 com s1 (encontrar a posicao na matriz)
	sll		$s2, $t0, 2																			# multiplica por 4 para encontrar a posicao na matriz
	addi	$t0, $0, 10																			# move 10 para o registrador t0 (encontrar a posicao na matriz)
	mul		$t0, $t0, $s1																		# multiplica o valor de t0 por s1 (encontrar a posicao na matriz)
	add		$t0, $t0, $s0																		# soma o valor de t0 com s0 (encontrar a posicao na matriz)
	sll		$s3, $t0, 2																			# multiplica por 4 para encontrar a posicao na matriz
	lw		$t0, jogos($s2)																		# pega da matriz o valor armazenado na posicao do jogo
	beq		$t0, $0, jaJogadoApagarResultado													# verifica a partir da posicao do jogo se a partida foi jogada ou nao, caso tenha nao cido, retorna ao menu
	addi	$t1, $0, 1																			# move o valor 1 para o registrador t1
	beq		$t0, $t1, t1WinRemove																# se o time1 tiver ganhado a partida realiza o jump
	addi	$t1, $0, 2																			# move o valor 2 para o registrador t1
	beq		$t0, $t1, t2WinRemove																# se o time2 tiver ganhado a partida realiza o jump
voltaRemove:																					# volta do jump de vitoria de um dos times
	add		$t0, $0, $0																			# move para t0 o valor 0
	sw		$t0, jogos($s2)																		# salva no time1 o valor 1 referente a vitoria
	sw		$t0, jogos($s3)																		# salva no time2 o valor 2 referente a derota
	lw		$t0, nJogos($s0)																	# le a quantidade de jogos do time1
	addi	$t0, $t0, -1																		# adiciona 1, pois foi jogado mais 1 jogo
	sw		$t0, nJogos($s0)																	# salva a quantidade de jogos do time1 + 1
	lw		$t0, nJogos($s1)																	# carrega o sua quantidade de jogos em t0
	addi	$t0, $t0, -1																		# adiciona um jogo a quantidade de jogos
	sw		$t0, nJogos($s1)																	# salva a quantidade de jogos do time2 + 1
	li		$v0, 4																				# codigo escrita string
	la		$a0, apagouResultado																# carrega a string a ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega a string a ser escrita
	syscall																						# chamada do sistema
fimResultadosApagarResultados:																	# fim da funcao
	jr		$ra																					# volta para quem chamou
jaJogadoApagarResultado:																		# caso ja tenha cido jogado, printa e retorna
	li		$v0, 4																				# codigo escrita string
	la		$a0, naoJogou																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco a ser escrito
	syscall																						# chamada do sistema
	j		fimResultadosApagarResultados														# chama o fim da funcao
t1WinRemove:																					# realiza a remocao da vitoria e derrota dos times envolvidos
	sll		$s0, $s0, 2																			# multiplica por 4 o valor digitado do time1
	sll		$s1, $s1, 2																			# multiplica por 4 o valor digitado do time2
	lw		$t0, vitorias($s0)																	# carrega o numero de vitorias do time1
	addi	$t0, $t0, -1																		# subtrai 1 vitoria do time1
	sw		$t0, vitorias($s0)																	# salva o novo numero de vitorias do time1
	lw		$t0, derrotas($s1)																	# carrega o numero de derrotas do time2
	addi	$t0, $t0, -1																		# subtrai 1 derrota do time2
	sw		$t0, derrotas($s1)																	# salva o novo numero de derrotas
	j		voltaRemove																			# volta para a remocao da partida
t2WinRemove:																					# realiza a remocao da vitoria e derrota dos times envolvidos
	sll		$s0, $s0, 2																			# multiplica por 4 o valor digitado do time1
	sll		$s1, $s1, 2																			# multiplica por 4 o valor digitado do time2
	lw		$t0, vitorias($s1)																	# carrega o numero de vitorias do time2
	addi	$t0, $t0, -1																		# subtrai 1 vitoria do time2
	sw		$t0, vitorias($s1)																	# salva o novo numero de vitorias do time2
	lw		$t0, derrotas($s0)																	# carrega o numero de derrotas do time1
	addi	$t0, $t0, -1																		# subtrai 1 derrota do time1
	sw		$t0, derrotas($s0)																	# salva o novo numero de derrotas do time1
	j		voltaRemove																			# volta para a remocao da partida
	
gerarResultados:																				# funcao de gerar resultados
	lb		$t0, regTimes($0)																	# carrega em t0 0 valor de regTimes
	beq		$t0, $0, printNaoEditarResultados													# compara o valor de t0 com 0 (pula caso nao exista times cadastrados)
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, timesPrint																		# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, jogosPrint																		# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, vitoriasPrint																	# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, derrotasPrint																	# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	add		$t0, $0, $0																			# i = 0	inicio de i, registrador t0 = 0
	addi	$s0, $0, 10																			# i(max) = 10 valor maximo de i s0 = 10
	add		$s1, $0, $0																			# move o valor zero para s1, armazena o numero de jogos
loopNjogos:																						# loop contar numero de jogos jogados
	sll		$t1, $t0, 2																			# pega o valor de i multiplica por 4 para ir para a proxima posicao do array
	lw		$t1, nJogos($t1)																	# faz o load do valor do array em t1
	add		$s1, $s1, $t1																		# nJogos = nJogos[i] soma elementos do array
	addi	$t0, $t0, 1																			# i+= 1
	bne		$t0, $s0, loopNjogos																# for(i = 0; i != 10; i += 1)	
	addi	$t2, $0, 20																			# adiciona 20 ao registrador t2
	addi 	$s0, $0, 11																			# fim variavel i
	addi 	$t6, $0, 10																			# i = 0
	addi	$s2, $0, 90																			# numero maximo de jogos (utilizado para saber se printa o resultado final ou nao dos jogos)
loopOrdenado:																					# loop para printar ordenado por vitoria
	addi	$t0, $0, 1																			# inicio variavel j
loopPrintTimesResultado:																		# loop print nome times
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	sll		$t1, $t1, 2																			# multiplica por 4 o valor de j
	lw		$t1, vitorias($t1)																	# carrega o valor de j no array
	addi	$t5, $t6, -1																		# subtrai 1 do valor de i
	bne		$t1, $t5, pulaPrint																	# verifica se o valor encontrado no array e igual a j
	li		$v0, 4																				# codigo escrita string
	la		$a0, timesNome																		# carrega o endereco de memoria em a0
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	mul		$t1, $t1, $t2																		# multiplica por 20 o valor de t2 para encontrar a posicao de momoria que sera escrita
	add		$a0, $a0, $t1																		# adiciona ao endereco de momoria os bytes que serao pulados
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 1																				# codigo escrita de inteiros
	move	$a0, $t0																			# move o valor de i para t0 para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	li		$v0, 1																				# codigo escrita de inteiros
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	sll		$t1, $t1, 2																			# multiplica o valor de i-1 por 4 para encontrar a posicao no array
	lw		$a0, nJogos($t1)																	# carrega o valor encontrado no array em a0 para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# move a string a ser escrita para a0
	syscall																						# chamada do sistema
	li		$v0, 1																				# codigo escrita de inteiros
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	sll		$t1, $t1, 2																			# multiplica o valor de i-1 por 4 para encontrar a posicao no array
	lw		$a0, vitorias($t1)																	# carrega o valor encontrado no array em a0 para ser escrito
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# move a string a ser escrita para a0
	syscall																						# chamada do sistema
	li		$v0, 1																				# codigo escrita de inteiros
	addi	$t1, $t0, -1																		# subtrai 1 do contador
	sll		$t1, $t1, 2																			# multiplica o valor de i-1 por 4 para encontrar a posicao no array
	lw		$a0, derrotas($t1)																	# carrega o valor encontrado no array em a0 para ser escrito
	syscall																						# chamada do sistema
	beq		$s1, $s2, pulaPulaLinha																# pula caso todos jogos ja tenham cido jogados
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
pulaPulaLinha:																					# caso os todos jogos ja tenham cido jogados
	bne		$s1, $s2, pulaPrint																	# pula caso ainda tenham jogos a serrem jogados
	li		$v0, 4																				# codigo escrita string
	la		$a0, tab																			# string carregada em a0 para ser escrita
	syscall																						# chamada do sistema
	addi	$t7, $0, 1																			# move o valor 1 para o registrador t7
	beq		$t7, $t0, semi																		# caso seja 1 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 2																			# move o valor 2 para o registrador t7
	beq		$t7, $t0, semi																		# caso seja 2 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 3																			# move o valor 3 para o registrador t7
	beq		$t7, $t0, qua																		# caso seja 3 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 4																			# move o valor 4 para o registrador t7
	beq		$t7, $t0, qua																		# caso seja 4 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 5																			# move o valor 5 para o registrador t7
	beq		$t7, $t0, qua																		# caso seja 5 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 6																			# move o valor 6 para o registrador t7
	beq		$t7, $t0, qua																		# caso seja 6 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 7																			# move o valor 7 para o registrador t7
	beq		$t7, $t0, desc																		# caso seja 7 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 8																			# move o valor 8 para o registrador t7
	beq		$t7, $t0, desc																		# caso seja 8 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 9																			# move o valor 9 para o registrador t7
	beq		$t7, $t0, reb																		# caso seja 9 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
	addi	$t7, $0, 10																			# move o valor 10 para o registrador t7
	beq		$t7, $t0, reb																		# caso seja 10 lugar realiza o jump para o print (apenas se todos os jogos ja tiverem cido disputados)
retornaLoopResultados:																			# volta apos print do resultado parcial
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# codigo escrita string
	la		$a0, pulaLinha																		# carrega o endereco de memoria em a0
	syscall																						# chamada do sistema
pulaPrint:																						# caso o valor de i nao corresponda, pula para o proximo sem realizar o print
	addi	$t0, $t0, 1																			# j += 1
	bne		$s0, $t0, loopPrintTimesResultado													# for(j = 1; j != 11; j += 1)
	addi	$t6, $t6, -1																		# i -= 1
	bne 	$t6, $0, loopOrdenado																# for(j = 10; j != 0; j -= 1)
resultadosReturn:																				# retorno menu
	jr		$ra																					# volta para quem chamou
printNaoEditarResultados:																		# print caso nao seja possivel acessar essa funcao
	li		$v0, 4																				# funcao escrita string
	la		$a0, naoTimes																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	li		$v0, 4																				# funcao escrita string
	la		$a0, pulaLinha																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		resultadosReturn																	# chama o retorno
semi:																							# print semifinal
	li		$v0, 4																				# codigo escrita de string
	la		$a0, semifinal																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		retornaLoopResultados																# retorno ao loop de print de resultados
qua:																							# print quartas de final
	li		$v0, 4																				# codigo escrita de string
	la		$a0, quartas																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		retornaLoopResultados																# retorno ao loop de print de resultados
desc:																							# print desclassificado
	li		$v0, 4																				# codigo escrita de string
	la		$a0, desclassificado																# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		retornaLoopResultados																# retorno ao loop de print de resultados
reb:																							# print rebaixado
	li		$v0, 4																				# codigo escrita de string
	la		$a0, rebaixado																		# carrega a string a ser escrita em a0
	syscall																						# chamada do sistema
	j		retornaLoopResultados																# retorno ao loop de print de resultados
