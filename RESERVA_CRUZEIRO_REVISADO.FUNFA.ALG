algoritmo "reserva_cruzeiro_revisado"

// Se��o de Declara��es das vari�veis
var
   i: inteiro
   totalReservas: inteiro
   pessoas: inteiro
   opPeriodo: inteiro
   opTrajeto: inteiro
   cabineEscolhida: inteiro
   preco: real
   continuar: caractere // Usado para controlar o loop principal (deve ser 's' ou 'n')
   tempContinuar: caractere // Vari�vel tempor�ria para ler a entrada S/N bruta

   tipoCabine: vetor[1..100] de caractere
   qtdPessoas: vetor[1..100] de inteiro
   valorTotal: vetor[1..100] de real
   nomeCliente: vetor[1..100] de caractere
   periodo: vetor[1..100] de caractere
   trajeto: vetor[1..100] de caractere

   capacidadeCabine: vetor[1..6] de inteiro
   precoCabine: vetor[1..6] de real
   nomeCabine: vetor[1..6] de caractere

// In�cio do Algoritmo Principal
inicio
   totalReservas <- 0

   // Configura��o dos dados das cabines
   nomeCabine[1] <- "Cabine Simples"
   precoCabine[1] <- 500.00
   capacidadeCabine[1] <- 2

   nomeCabine[2] <- "Cabine Dupla"
   precoCabine[2] <- 900.00
   capacidadeCabine[2] <- 4

   nomeCabine[3] <- "Cabine Luxo"
   precoCabine[3] <- 1500.00
   capacidadeCabine[3] <- 2

   nomeCabine[4] <- "Cabine Familiar"
   precoCabine[4] <- 2000.00
   capacidadeCabine[4] <- 6

   nomeCabine[5] <- "Cabine Premium"
   precoCabine[5] <- 3000.00
   capacidadeCabine[5] <- 4

   nomeCabine[6] <- "Cabine VIP"
   precoCabine[6] <- 5000.00
   capacidadeCabine[6] <- 2

   // Loop principal de reservas
   repita
      limpatela
      escreval("===========================================")
      escreval("        RESERVA DE CRUZEIRO MAR�TIMO       ")
      escreval("===========================================")
      escreval("Tipos de cabines dispon�veis:")
      para i de 1 ate 6 faca
         escreval(i, ". ", nomeCabine[i], " - Capacidade: ", capacidadeCabine[i], " pessoas - Pre�o: R$ ", precoCabine[i]:0:2)
      fimpara
      escreval("-------------------------------------------")

      // 1. Escolha da cabine
      repita
         escreva("Escolha o N�MERO da cabine desejada (1 a 6): ")
         leia(cabineEscolhida)
         se (cabineEscolhida < 1) ou (cabineEscolhida > 6) entao
            escreval("Op��o inv�lida! Por favor, digite um n�mero entre 1 e 6.")
         fimse
      ate (cabineEscolhida >= 1) e (cabineEscolhida <= 6)

      // 2. Quantidade de pessoas
      repita
         escreva("Informe a quantidade de pessoas (m�x. ", capacidadeCabine[cabineEscolhida], " para ", nomeCabine[cabineEscolhida], "): ")
         leia(pessoas)
         se (pessoas <= 0) ou (pessoas > capacidadeCabine[cabineEscolhida]) entao
            escreval("Quantidade inv�lida! Deve ser entre 1 e ", capacidadeCabine[cabineEscolhida], " pessoas para esta cabine.")
         fimse
      ate (pessoas > 0) e (pessoas <= capacidadeCabine[cabineEscolhida])

      // 3. C�lculo do valor total
      preco <- precoCabine[cabineEscolhida] * pessoas

      // 4. Nome do cliente
      escreva("Informe o nome completo do cliente respons�vel: ")
      leia(nomeCliente[totalReservas + 1])

      // 5. Escolha do per�odo
      escreval("-------------------------------------------")
      escreval("Escolha o per�odo da viagem:")
      escreval("1 - Baixa Temporada")
      escreval("2 - Alta Temporada")
      escreval("3 - Feriado Prolongado")
      repita
         escreva("Digite a op��o para o PER�ODO (1 a 3): ")
         leia(opPeriodo)
         se (opPeriodo < 1) ou (opPeriodo > 3) entao
            escreval("Op��o de per�odo inv�lida! Por favor, digite 1, 2 ou 3.")
         fimse
      ate (opPeriodo >= 1) e (opPeriodo <= 3)

      escolha opPeriodo
      caso 1
         periodo[totalReservas + 1] <- "Baixa Temporada"
      caso 2
         periodo[totalReservas + 1] <- "Alta Temporada"
      caso 3
         periodo[totalReservas + 1] <- "Feriado Prolongado"
      fimescolha

      // 6. Escolha do trajeto
      escreval("-------------------------------------------")
      escreval("Escolha o trajeto da viagem:")
      escreval("1 - Rio de Janeiro - B�zios - Salvador")
      escreval("2 - Santos - Ilha Bela - Rio de Janeiro")
      escreval("3 - Fortaleza - Recife - Natal")
      repita
         escreva("Digite a op��o para o TRAJETO (1 a 3): ")
         leia(opTrajeto)
         se (opTrajeto < 1) ou (opTrajeto > 3) entao
            escreval("Op��o de trajeto inv�lida! Por favor, digite 1, 2 ou 3.")
         fimse
      ate (opTrajeto >= 1) e (opTrajeto <= 3)

      escolha opTrajeto
      caso 1
         trajeto[totalReservas + 1] <- "Rio de Janeiro - B�zios - Salvador"
      caso 2
         trajeto[totalReservas + 1] <- "Santos - Ilha Bela - Rio de Janeiro"
      caso 3
         trajeto[totalReservas + 1] <- "Fortaleza - Recife - Natal"
      fimescolha

      // Armazenamento dos dados da reserva
      tipoCabine[totalReservas + 1] <- nomeCabine[cabineEscolhida]
      qtdPessoas[totalReservas + 1] <- pessoas
      valorTotal[totalReservas + 1] <- preco
      totalReservas <- totalReservas + 1

      // Exibi��o do resumo da reserva
      escreval("-------------------------------------------")
      escreval("========= RESUMO DA RESERVA #", totalReservas, " =========")
      escreval("Cliente: ", nomeCliente[totalReservas])
      escreval("Cabine: ", tipoCabine[totalReservas])
      escreval("N�mero de pessoas: ", qtdPessoas[totalReservas])
      escreval("Per�odo: ", periodo[totalReservas])
      escreval("Trajeto: ", trajeto[totalReservas])
      escreval("Valor Total: R$ ", valorTotal[totalReservas]:0:2)
      escreval("===========================================")

      // Continuar ou n�o - L�gica ajustada
      repita
         escreva("Deseja fazer outra reserva? (S/N): ")
         leia(tempContinuar) // L� a entrada bruta

         // Verifica a entrada e define a vari�vel 'continuar' padronizada para min�scula
         se (tempContinuar = "s") ou (tempContinuar = "S") entao
            continuar <- "s"
         senao
            se (tempContinuar = "n") ou (tempContinuar = "N") entao
               continuar <- "n"
            senao
               continuar <- "#" // Marca como inv�lido para a valida��o abaixo
            fimse
         fimse

         // Valida se 'continuar' � 's' ou 'n'
         se (continuar <> "s") e (continuar <> "n") entao
            escreval("Op��o inv�lida! Por favor, digite 'S' para Sim ou 'N' para N�o.")
         fimse
      ate (continuar = "s") ou (continuar = "n") // Loop de valida��o

   // Condi��o do loop principal: repete at� 'continuar' ser "n"
   ate continuar = "n"

   // Listagem final de todas as reservas
   limpatela
   escreval("===========================================")
   escreval("      TODAS AS RESERVAS REALIZADAS         ")
   escreval("===========================================")
   se totalReservas = 0 entao
      escreval("Nenhuma reserva foi realizada.")
   senao
      para i de 1 ate totalReservas faca
         escreval("---------------- Reserva ", i, " ----------------")
         escreval(" Cliente: ", nomeCliente[i])
         escreval(" Cabine: ", tipoCabine[i])
         escreval(" Pessoas: ", qtdPessoas[i])
         escreval(" Per�odo: ", periodo[i])
         escreval(" Trajeto: ", trajeto[i])
         escreval(" Valor: R$ ", valorTotal[i]:0:2)
      fimpara
   fimse
   escreval("===========================================")
   escreval("Programa finalizado. Obrigado por utilizar nossos servi�os!")

fimalgoritmo