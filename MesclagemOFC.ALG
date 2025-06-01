P1 a 4
tipo cliente = registro
   nome: caractere
fimregistro

var
   precoPorPacote: real
   quantidadeClientes, i, parcelas, quantidadePessoas, opcao, CapacidadeMaxima: inteiro
   resposta: caractere
   maiuscula:caractere
   pessoa : vetor[1..1] de cliente
   valorTotalCabine: real

inicio
   Escreval("Seja bem vindos!")
   Escreval("Menu de Cabines:")
   Escreval("1 - Cabine Simples (máx. 1 pessoa) Pacote de: R$ 500,00")
   Escreval("2 - Cabine Dupla (máx. 2 pessoas) Pacote de: R$ 900,00")
   Escreval("3 - Cabine Luxo (máx. 3 pessoas) Pacote de: R$ 1,500.00")
   Escreval("4 - Suíte Familiar (máx. 4 pessoas) Pacote de: R$ 2,000.00")
   Escreval("5 - Suíte Premium (máx. 5 pessoas) Pacote de: R$ 3,000.00")
   Escreval("6 - Suíte vip (máx. 7 pessoas) Pacote de: R$ 5,000.00")

   quantidadeClientes <- 1

   para i de 1 ate quantidadeClientes faca
      Escreval("=== Cabine ", i, " ===")

      // Ler a opção da cabine
      Escreva("Qual cabine você deseja? ")
      Leia(opcao)

      // Definir capacidade máxima conforme a cabine escolhida
      Se opcao = 1 então
         CapacidadeMaxima <- 1
      Senao
         Se opcao = 2 então
            CapacidadeMaxima <- 2
         Senao
            Se opcao = 3 então
               CapacidadeMaxima <- 3
            Senao
               Se opcao = 4 então
                  CapacidadeMaxima <- 4
               Senao
                  Se opcao = 5 então
                     CapacidadeMaxima <- 5
                  Senao
                     Se opcao = 6 então
                        CapacidadeMaxima <- 7
                     Senao
                        Escreval("Opção inválida!")
                        // Se quiser, pode repetir a leitura da opção aqui, mas por enquanto segue
                        CapacidadeMaxima <- 0
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
      // Validar a quantidade de pessoas, não pode passar da capacidade máxima
      Se CapacidadeMaxima > 0 então
         Repita
            Escreva("Digite a quantidade de pessoas para a cabine escolhida (máx. ", CapacidadeMaxima, "): ")
            Leia(quantidadePessoas)

            Se quantidadePessoas > CapacidadeMaxima então
               Escreval("Quantidade inválida! O máximo para essa cabine é ", CapacidadeMaxima, ". Tente novamente.")
            FimSe
         Até quantidadePessoas <= CapacidadeMaxima
      FimSe

      // Preço do pacote
      Escreva("Preço do pacote: ")
      Leia(precoPorPacote)

      valorTotalCabine <- precoPorPacote * quantidadePessoas

      Escreva("Pessoa responsável pela cabine 1: ")
      Leia(pessoa[1].nome)

   fimPara
Fimalgoritmo

Parte 5 a 7

Algoritmo "EscolhaPeriodoViagem"

Var
   VTR: Real
   OP: inteiro
   OPS: Inteiro
   NCP, TC: Caractere
   NPR: Inteiro

Inicio
   // Parte do Caio, alterações: Adição do comando "Enquanto" e substituição do comando
   //"Caso" para "Se", para evitar bugs no codigo.
   Enquanto (OPS = 0) ou (OPS >3) faca
      EscrevaL("Escolha o trajeto do navio:")
      Escreval()
      EscrevaL("1 - Rio de Janeiro - Búzios - Salvador")
      Escreval()
      EscrevaL("2 - Santos - Ilha Bela - Rio")
      Escreval()
      EscrevaL("3 - Fortaleza - Recife - Natal")
      Escreval()
      Escreva("Digite a opção desejada (1 a 3): ")
      Escreval()
      Leia(OPS)
      Se OPS = 0 entao
         LimpaTela
         EscrevaL("Opção inválida!")
      Fimse
      Se OPS > 3 entao
         LimpaTela
         EscrevaL("Opção inválida!")
      FimSe
   FimEnquanto
   //Parte do Leo, alterações: o codigo foi totalmente rescrito, pois estava extremamente
   //longo, além de estar muito complexo, em algo que deveria ser simples.
   LimpaTela
   Enquanto (OP = 0) ou (OP >3) faca
      Escreval("Escolha o período da viagem:")
      Escreval()
      Escreval("1 - Baixa Temporada")
      Escreval()
      Escreval("2 - Alta Temporada")
      Escreval()
      Escreval("3 - Feriado Prolongado")
      Escreval()
      Escreva("Digite a opção desejada (1 a 3): ")
      Escreval()
      Leia(OP)
      Limpatela
   FimEnquanto
   Escreval()
   Se OP = 1 então
      Escreval("Você escolheu: Baixa Temporada.")
   Senao
      Se OP = 2 então
         Escreval("Você escolheu: Alta Temporada.")
      Senao
         Se OP = 3 então
            Escreval("Você escolheu: Feriado Prolongado.")
         Senao
            Escreval("Opção inválida. Por favor, escolha entre 1 e 3.")
         FimSe
      FimSe
   FimSe
   LimpaTela
   // Parte do Jeffeson, alterações: adição do "Se" na parte do resumo final, para mostrar
   // os resultados das partes acima ("OPS" e "OP").
   Escreval()
   Escolha OPS
   Caso 1
      EscrevaL("Você escolheu: Rio de Janeiro - Búzios - Salvador")
   Caso 2
      EscrevaL("Você escolheu: Santos - Ilha Bela - Rio")
   Caso 3
      EscrevaL("Você escolheu: Fortaleza - Recife - Natal")
   FimEscolha
   LimpaTela
   Escreval("PARA VER O RESUMO, PREENCHA O QUE SE PEDE ABAIXO")
   Escreval ()
   Escreval("Informe o tipo da cabine (Ex: Luxo, Simples, Dupla...): ")
   Leia(TC)

   LimpaTela()
   Escreval("Informe o numero de pessoas na reserva: ")
   Leia(NPR)

   LimpaTela()
   Escreval("Informe o valor total da reserva: ")
   Leia(VTR)

   LimpaTela()
   Escreval("Informe o nome do cliente principal: ")
   Leia(NCP)

   LimpaTela()
   Escreval ()
   Escreval ("!!!RESUMO DA RESERVA!!!")
   Escreval ()
   Escreval ("Cliente Responsavel: ",NCP)
   Escreval ()
   Escreval ("Tipo da Cabine: ",TC)
   Escreval ()
   Escreval ("Numero de Pessoas: ",NPR)
   Escreval ()
   Escreval ("Valor Total da Reserva: R$", VTR:8:2)
   Escreval ()
   Se (OPS = 1) entao
      Escreval ("Trajetoria: Rio de Janeiro - Búzios - Salvador")
      Escreval ()
   senao
      Se (OPS = 2) entao
         Escreval ("Trajetoria: Santos - Ilha Bela - Rio")
         Escreval ()
      senao
         Se (OPS = 3) entao
            Escreval ("Trajetoria: Fortaleza - Recife - Natal")
            Escreval ()
         Fimse
      Fimse
   Fimse
   Se (OP = 1) entao
      Escreval ("Período da Viagem: Baixa Temporada")
      Escreval ()
   senao
      Se (OP = 2) entao
         Escreval ("Período da Viagem: Alta Temporada")
         Escreval ()
      senao
         Se (OP = 3) entao
            Escreval ("Período da Viagem: Feriado Prolongado")
            Escreval ()
         Fimse
      Fimse
   Fimse
   Escreval ("!!!FIM DO RESUMO DA RESERVA!!!")
Fimalgoritmo
