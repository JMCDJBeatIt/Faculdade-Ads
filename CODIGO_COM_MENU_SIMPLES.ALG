Algoritmo "Codigo com menu simples"

Var
   AuxOPC: Inteiro

Procedimento Cabine
Var
   QC: Inteiro
   i: Inteiro
   OPC: Inteiro
   CM: Inteiro
   QP: Inteiro
   OP: Inteiro
   OPS: Inteiro
   P: Inteiro
   PR: Caractere
   FN: Caractere
   FP: caractere
   VTC: Real
   VTP: Real
   VTD: Real
   PC: Vetor[1..5] de Inteiro
   OPW: inteiro
   PCR: inteiro

Inicio

   PC[1] <- 500
   PC[2] <- 900
   PC[3] <- 1500
   PC[4] <- 2000
   PC[5] <- 3000
   P <- 10

   //Parte do Eduardo (1-4)
   Escreval("=====================")
   Escreval("|| Menu de Cabines ||")
   Escreval("=====================")
   Escreval()
   Escreval("1 - Cabine Simples (máx. 1 pessoa)")
   Escreval("Preço por pesosa: R$ 500")
   Escreval("-----------------------------------")
   Escreval("2 - Cabine Dupla (máx. 2 pessoas)")
   Escreval("Preço por pesosa: R$ 900")
   Escreval("-----------------------------------")
   Escreval("3 - Cabine Luxo (máx. 3 pessoas)")
   Escreval("Preço por pesosa: R$ 1.500")
   Escreval("-----------------------------------")
   Escreval("4 - Suíte Familiar (máx. 4 pessoas)")
   Escreval("Preço por pesosa: R$ 2.000")
   Escreval("-----------------------------------")
   Escreval("5 - Suíte Premium (máx. 5 pessoas)")
   Escreval("Preço por pesosa: R$ 3.000")
   Escreval("-----------------------------------")
   QC <- 1
   para i de 1 ate QC faca
      Escreval("=== Cabine ", i, " ===")

      // Ler a opção da cabine
      Escreva("Qual cabine você deseja? ")
      Leia(OPC)

      // Definir capacidade máxima conforme a cabine escolhida
      Se OPC = 1 então
         CM <- 1
      Senao
         Se OPC = 2 então
            CM <- 2
         Senao
            Se OPC = 3 então
               CM <- 3
            Senao
               Se OPC = 4 então
                  CM <- 4
               Senao
                  Se OPC = 5 então
                     CM <- 5
                  Senao
                     Se OPC > 5 então
                        Escreval("Opção inválida!")
                        Fimalgoritmo
                        // Se quiser, pode repetir a leitura da opção aqui, mas por enquanto segue
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
      // Validar a quantidade de pessoas, não pode passar da capacidade máxima
      Se CM > 0 então
         Repita
            Escreva("Digite a quantidade de pessoas para a cabine escolhida (máx. ", CM, "): ")
            Leia(QP)

            Se QP > CM então
               Escreval("Quantidade inválida! O máximo para essa cabine é ", CM, ". Tente novamente.")
            FimSe
         Até QP <= CM
      FimSe
      Escolha (OPC)
      Caso 1
         VTC <- PC[1] * QP
      Caso 2
         VTC <- PC[2] * QP
      Caso 3
         VTC <- PC[3] * QP
      Caso 4
         VTC <- PC[4] * QP
      Caso 5
         VTC <- PC[5] * QP
      Fimescolha
      Escreva("Pessoa responsável pela cabine: ")
      Leia(PR)
   fimPara
   LimpaTela
   // Parte do Caio, alterações: Adição do comando "Enquanto" e substituição do comando
   //"Caso" para "Se", para evitar bugs no codigo.
   Enquanto (OPS = 0) ou (OPS >3) faca
      Escreval("==========================")
      EscrevaL("Escolha o trajeto do navio")
      Escreval("==========================")
      Escreval()
      EscrevaL("1 - Rio de Janeiro - Búzios - Salvador")
      Escreval("--------------------------------------")
      EscrevaL("2 - Santos - Ilha Bela - Rio")
      Escreval("--------------------------------------")
      EscrevaL("3 - Fortaleza - Recife - Natal")
      Escreval("--------------------------------------")
      Escreval()
      Escreva("Digite a opção desejada (1 a 3): ")
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
      Escreval("============================")
      Escreval("Escolha o período da viagem:")
      Escreval("============================")
      Escreval()
      Escreval("1 - Baixa Temporada")
      Escreval("----------------------")
      Escreval("2 - Alta Temporada")
      Escreval("----------------------")
      Escreval("3 - Feriado Prolongado")
      Escreval("----------------------")
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
   Escreval ()
   Escreval ("||RESUMO DA RESERVA||")
   Escreval ("======================")
   Escreval ("Cliente Responsavel: ",PR)
   Escreval ("----------------------------")
   Se (OPC = 1) entao
      Escreval ("Tipo da Cabine: Cabine Simples")
      Escreval ("----------------------------")
   senao
      Se (OPC = 2) entao
         Escreval ("Tipo da Cabine: Cabine Dupla")
         Escreval ("----------------------------")
      senao
         Se (OPC = 3) entao
            Escreval ("Tipo da Cabine: Cabine Luxo")
            Escreval ("----------------------------")
         senao
            Se (OPC = 4) entao
               Escreval ("Tipo da Cabine: Suíte Familiar")
               Escreval ("----------------------------")
            senao
               Se (OPC = 5) entao
                  Escreval("Tipo da Cabine: Suíte Premium")
                  Escreval("----------------------------")
               Fimse
            Fimse
         Fimse
      Fimse
   Fimse
   Escreval ("Numero de Pessoas: ",QP)
   Escreval ("----------------------------")
   Se (OPS = 1) entao
      Escreval ("Trajetoria: Rio de Janeiro - Búzios - Salvador")
      Escreval ("----------------------------")
   senao
      Se (OPS = 2) entao
         Escreval ("Trajetoria: Santos - Ilha Bela - Rio")
         Escreval ("----------------------------")
      senao
         Se (OPS = 3) entao
            Escreval ("Trajetoria: Fortaleza - Recife - Natal")
            Escreval ("----------------------------")
         Fimse
      Fimse
   Fimse
   Se (OP = 1) entao
      Escreval ("Período da Viagem: Baixa Temporada")
      Escreval ("----------------------------")
   senao
      Se (OP = 2) entao
         Escreval ("Período da Viagem: Alta Temporada")
         Escreval ("----------------------------")
      senao
         Se (OP = 3) entao
            Escreval ("Período da Viagem: Feriado Prolongado")
            Escreval ("----------------------------")
         Fimse
      Fimse
   Fimse
   Se (OPC = 1) entao
      Escreval ("Valor por pessoa: R$",PC[1])
      Escreval ("----------------------------")
   senao
      Se (OPC = 2) entao
         Escreval ("Valor por pessoa: R$",PC[2])
         Escreval ("----------------------------")
      senao
         Se (OPC = 3) entao
            Escreval ("Valor por pessoa: R$",PC[3])
            Escreval ("----------------------------")
         senao
            Se (OPC = 4) entao
               Escreval ("Valor por pessoa: R$",PC[4])
               Escreval ("----------------------------")
            senao
               Se (OPC = 5) entao
                  Escreval("Valor por pessoa: R$",PC[5])
                  Escreval("----------------------------")
               Fimse
            Fimse
         Fimse
      Fimse
   Fimse
   Escreval ("Valor Total da Reserva: R$",VTC)
   Escreval ("----------------------------")
   Escreval ()
   Escreval ("========================")
   Escreval ("FIM DO RESUMO DA RESERVA")
   Escreval ("========================")
   Escreval ("Deseja finalizar a reversa?")
   Leia(FN)
   Se (FN = "Sim") entao
      LimpaTela
   senao
Fimalgoritmo
FimSe
repita
   escreval("Escolha forma de pagamento")
   escreval("1) Cartão de credito(Até 12x sem juros)")
   escreval("2) Cartão de debito ")
   escreval("3) Pix(10% de Desconto)")
   leia(op)

   escolha (op)
   caso 1
      escreval ("pagamento com cartão de credito")
      escreval ("Deseja parcelar? Sim/não")
      leia (FP)
      se FP = "Sim" entao
         escreval ("Em quantas vezes deseja parcelar?")
         leia (PCR)
         Se PCR > 12 entao
            Escreval("Quantidade inválida!")
Fimalgoritmo

FimSe
VTP <- VTC/PCR
escreval ("valor total:R$", VTC:4:2)
escreval ("parcelar",  PCR,  " vezes de R$", VTP:4:2)
escreval ("pagamento concluido")
senão
   escreval ("Pagamento a vista. valor total:R$", VTC:4:2)
fimse
caso 2
   escreval ("Pagamento cartão de debito")
   escreval ("valor total:R$", VTC )
   escreval ("pagamento concluido")
caso 3
   VTD <- VTC * (1-(P/100))
   escreval ("Pagamento com PIX")
   escreval ("valor total com 10% de desconto:R$", VTD)
   escreval ("Pgamento Concluido!")
outrocaso
   escreval ("Opção invalida, tente novamente")

fimescolha
ate op <= 3
fimescolha
Escreval ("Deseja finalizar a reversa?")
Leia(FN)
Se (FN = "Sim") entao
   LimpaTela
senao
Fimalgoritmo
Fimse
Escreval ()
Escreval ("||RESUMO DA COMPRA||")
Escreval ("======================")
Escreval ("Cliente Responsavel: ",PR)
Escreval ("----------------------------")
Se (OPC = 1) entao
   Escreval ("Tipo da Cabine: Cabine Simples")
   Escreval ("----------------------------")
senao
   Se (OPC = 2) entao
      Escreval ("Tipo da Cabine: Cabine Dupla")
      Escreval ("----------------------------")
   senao
      Se (OPC = 3) entao
         Escreval ("Tipo da Cabine: Cabine Luxo")
         Escreval ("----------------------------")
      senao
         Se (OPC = 4) entao
            Escreval ("Tipo da Cabine: Suíte Familiar")
            Escreval ("----------------------------")
         senao
            Se (OPC = 5) entao
               Escreval("Tipo da Cabine: Suíte Premium")
               Escreval("----------------------------")
            Fimse
         Fimse
      Fimse
   Fimse
Fimse
Escreval ("Numero de Pessoas: ",QP)
Escreval ("----------------------------")
Se (OPS = 1) entao
   Escreval ("Trajetoria: Rio de Janeiro - Búzios - Salvador")
   Escreval ("----------------------------")
senao
   Se (OPS = 2) entao
      Escreval ("Trajetoria: Santos - Ilha Bela - Rio")
      Escreval ("----------------------------")
   senao
      Se (OPS = 3) entao
         Escreval ("Trajetoria: Fortaleza - Recife - Natal")
         Escreval ("----------------------------")
      Fimse
   Fimse
Fimse
Se (OP = 1) entao
   Escreval ("Período da Viagem: Baixa Temporada")
   Escreval ("----------------------------")
senao
   Se (OP = 2) entao
      Escreval ("Período da Viagem: Alta Temporada")
      Escreval ("----------------------------")
   senao
      Se (OP = 3) entao
         Escreval ("Período da Viagem: Feriado Prolongado")
         Escreval ("----------------------------")
      Fimse
   Fimse
Fimse
Se (OPC = 1) entao
   Escreval ("Valor por pessoa: R$",PC[1])
   Escreval ("----------------------------")
senao
   Se (OPC = 2) entao
      Escreval ("Valor por pessoa: R$",PC[2])
      Escreval ("----------------------------")
   senao
      Se (OPC = 3) entao
         Escreval ("Valor por pessoa: R$",PC[3])
         Escreval ("----------------------------")
      senao
         Se (OPC = 4) entao
            Escreval ("Valor por pessoa: R$",PC[4])
            Escreval ("----------------------------")
         senao
            Se (OPC = 5) entao
               Escreval("Valor por pessoa: R$",PC[5])
               Escreval("----------------------------")
            Fimse
         Fimse
      Fimse
   Fimse
Fimse
Se (op = 1) entao
   Escreval ("Tipo de Pagamento: Cartão de crédito")
   Escreval ("----------------------------")
senao
   Se (op = 2) entao
      Escreval ("Tipo de Pagamento: Cartão de Debito)
      Escreval ("----------------------------")
   senao
      Se (op = 3) entao
         Escreval ("Tipo de Pagamento: Pix (Com 10% de desconto)")
         Escreval ("----------------------------")
      Fimse
   Fimse
Fimse


Se (op = 1) entao
   Se (FP = "Sim") entao
      Escreval("Valor Bruto: R$",VTC)
      Escreval("----------------------------")
      Escreval ("Parcelado em", PCR, " vezes de: R$",VTP:4:2)
      Escreval ("----------------------------")
   senao
      Escreval ("Valor total: R$",VTC)
      Escreval ("----------------------------")
   Fimse
senao
   Se (op = 2) entao
      Escreval ("Valor total: R$",VTC)
      Escreval ("----------------------------")
   senao
      Se (op = 3) entao
         Escreval("Valor Bruto: R$",VTC)
         Escreval("----------------------------")
         Escreval ("Valor total: R$",VTD)
         Escreval ("----------------------------")
      Fimse
   Fimse
Fimse
Escreval ()
Escreval ("========================")
Escreval ("FIM DO RESUMO DA COMPRA")
Fimalgoritmo
FimProcedimento

Funcao Menu: Inteiro
Var
   Opc: inteiro
inicio
   LimpaTela
   Escreval("=====SEJA BEM VINDO AO NOSSO SISTEMA DE RESERVAS=====")
   Escreval("1- Fazer reserva")
   Escreval("2- Sair")
   Leia(Opc)
   Retorne Opc
FimFuncao

Inicio
      Repita
            AuxOPC <- Menu
            Se (AuxOPC = 1) entao
               Cabine
            Fimse
      Ate (AuxOPC = 2)

Fimalgoritmo

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo