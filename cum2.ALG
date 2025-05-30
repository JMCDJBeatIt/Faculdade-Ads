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
