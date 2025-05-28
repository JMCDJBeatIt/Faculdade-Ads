algoritmo "reserva_cruzeiro_revisado"

// Seção de Declarações das variáveis
var
   i: inteiro
   totalReservas: inteiro
   pessoas: inteiro
   opPeriodo: inteiro
   opTrajeto: inteiro
   cabineEscolhida: inteiro
   preco: real
   continuar: caractere // Usado para controlar o loop principal (deve ser 's' ou 'n')
   tempContinuar: caractere // Variável temporária para ler a entrada S/N bruta

   tipoCabine: vetor[1..100] de caractere
   qtdPessoas: vetor[1..100] de inteiro
   valorTotal: vetor[1..100] de real
   nomeCliente: vetor[1..100] de caractere
   periodo: vetor[1..100] de caractere
   trajeto: vetor[1..100] de caractere

   capacidadeCabine: vetor[1..6] de inteiro
   precoCabine: vetor[1..6] de real
   nomeCabine: vetor[1..6] de caractere

// Início do Algoritmo Principal
inicio
   totalReservas <- 0

   // Configuração dos dados das cabines
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
      escreval("        RESERVA DE CRUZEIRO MARÍTIMO       ")
      escreval("===========================================")
      escreval("Tipos de cabines disponíveis:")
      para i de 1 ate 6 faca
         escreval(i, ". ", nomeCabine[i], " - Capacidade: ", capacidadeCabine[i], " pessoas - Preço: R$ ", precoCabine[i]:0:2)
      fimpara
      escreval("-------------------------------------------")

      // 1. Escolha da cabine
      repita
         escreva("Escolha o NÚMERO da cabine desejada (1 a 6): ")
         leia(cabineEscolhida)
         se (cabineEscolhida < 1) ou (cabineEscolhida > 6) entao
            escreval("Opção inválida! Por favor, digite um número entre 1 e 6.")
         fimse
      ate (cabineEscolhida >= 1) e (cabineEscolhida <= 6)

      // 2. Quantidade de pessoas
      repita
         escreva("Informe a quantidade de pessoas (máx. ", capacidadeCabine[cabineEscolhida], " para ", nomeCabine[cabineEscolhida], "): ")
         leia(pessoas)
         se (pessoas <= 0) ou (pessoas > capacidadeCabine[cabineEscolhida]) entao
            escreval("Quantidade inválida! Deve ser entre 1 e ", capacidadeCabine[cabineEscolhida], " pessoas para esta cabine.")
         fimse
      ate (pessoas > 0) e (pessoas <= capacidadeCabine[cabineEscolhida])

      // 3. Cálculo do valor total
      preco <- precoCabine[cabineEscolhida] * pessoas

      // 4. Nome do cliente
      escreva("Informe o nome completo do cliente responsável: ")
      leia(nomeCliente[totalReservas + 1])

      // 5. Escolha do período
      escreval("-------------------------------------------")
      escreval("Escolha o período da viagem:")
      escreval("1 - Baixa Temporada")
      escreval("2 - Alta Temporada")
      escreval("3 - Feriado Prolongado")
      repita
         escreva("Digite a opção para o PERÍODO (1 a 3): ")
         leia(opPeriodo)
         se (opPeriodo < 1) ou (opPeriodo > 3) entao
            escreval("Opção de período inválida! Por favor, digite 1, 2 ou 3.")
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
      escreval("1 - Rio de Janeiro - Búzios - Salvador")
      escreval("2 - Santos - Ilha Bela - Rio de Janeiro")
      escreval("3 - Fortaleza - Recife - Natal")
      repita
         escreva("Digite a opção para o TRAJETO (1 a 3): ")
         leia(opTrajeto)
         se (opTrajeto < 1) ou (opTrajeto > 3) entao
            escreval("Opção de trajeto inválida! Por favor, digite 1, 2 ou 3.")
         fimse
      ate (opTrajeto >= 1) e (opTrajeto <= 3)

      escolha opTrajeto
      caso 1
         trajeto[totalReservas + 1] <- "Rio de Janeiro - Búzios - Salvador"
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

      // Exibição do resumo da reserva
      escreval("-------------------------------------------")
      escreval("========= RESUMO DA RESERVA #", totalReservas, " =========")
      escreval("Cliente: ", nomeCliente[totalReservas])
      escreval("Cabine: ", tipoCabine[totalReservas])
      escreval("Número de pessoas: ", qtdPessoas[totalReservas])
      escreval("Período: ", periodo[totalReservas])
      escreval("Trajeto: ", trajeto[totalReservas])
      escreval("Valor Total: R$ ", valorTotal[totalReservas]:0:2)
      escreval("===========================================")

      // Continuar ou não - Lógica ajustada
      repita
         escreva("Deseja fazer outra reserva? (S/N): ")
         leia(tempContinuar) // Lê a entrada bruta

         // Verifica a entrada e define a variável 'continuar' padronizada para minúscula
         se (tempContinuar = "s") ou (tempContinuar = "S") entao
            continuar <- "s"
         senao
            se (tempContinuar = "n") ou (tempContinuar = "N") entao
               continuar <- "n"
            senao
               continuar <- "#" // Marca como inválido para a validação abaixo
            fimse
         fimse

         // Valida se 'continuar' é 's' ou 'n'
         se (continuar <> "s") e (continuar <> "n") entao
            escreval("Opção inválida! Por favor, digite 'S' para Sim ou 'N' para Não.")
         fimse
      ate (continuar = "s") ou (continuar = "n") // Loop de validação

   // Condição do loop principal: repete até 'continuar' ser "n"
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
         escreval(" Período: ", periodo[i])
         escreval(" Trajeto: ", trajeto[i])
         escreval(" Valor: R$ ", valorTotal[i]:0:2)
      fimpara
   fimse
   escreval("===========================================")
   escreval("Programa finalizado. Obrigado por utilizar nossos serviços!")

fimalgoritmo