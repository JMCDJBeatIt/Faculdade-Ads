Algoritmo "EscolhaPeriodoViagem"

Var
   VTR: Real
   OP: inteiro
   OPS: Inteiro
   NCP, TC: Caractere
   NPR: Inteiro

Inicio
   // Parte do Caio, altera��es: Adi��o do comando "Enquanto" e substitui��o do comando
   //"Caso" para "Se", para evitar bugs no codigo.
   Enquanto (OPS = 0) ou (OPS >3) faca
      EscrevaL("Escolha o trajeto do navio:")
      Escreval()
      EscrevaL("1 - Rio de Janeiro - B�zios - Salvador")
      Escreval()
      EscrevaL("2 - Santos - Ilha Bela - Rio")
      Escreval()
      EscrevaL("3 - Fortaleza - Recife - Natal")
      Escreval()
      Escreva("Digite a op��o desejada (1 a 3): ")
      Escreval()
      Leia(OPS)
      Se OPS = 0 entao
         LimpaTela
         EscrevaL("Op��o inv�lida!")
      Fimse
      Se OPS > 3 entao
         LimpaTela
         EscrevaL("Op��o inv�lida!")
      FimSe
   FimEnquanto
   //Parte do Leo, altera��es: o codigo foi totalmente rescrito, pois estava extremamente
   //longo, al�m de estar muito complexo, em algo que deveria ser simples.
   LimpaTela
   Enquanto (OP = 0) ou (OP >3) faca
      Escreval("Escolha o per�odo da viagem:")
      Escreval()
      Escreval("1 - Baixa Temporada")
      Escreval()
      Escreval("2 - Alta Temporada")
      Escreval()
      Escreval("3 - Feriado Prolongado")
      Escreval()
      Escreva("Digite a op��o desejada (1 a 3): ")
      Escreval()
      Leia(OP)
      Limpatela
   FimEnquanto
   Escreval()
   Se OP = 1 ent�o
      Escreval("Voc� escolheu: Baixa Temporada.")
   Senao
      Se OP = 2 ent�o
         Escreval("Voc� escolheu: Alta Temporada.")
      Senao
         Se OP = 3 ent�o
            Escreval("Voc� escolheu: Feriado Prolongado.")
         Senao
            Escreval("Op��o inv�lida. Por favor, escolha entre 1 e 3.")
         FimSe
      FimSe
   FimSe
   LimpaTela
   // Parte do Jeffeson, altera��es: adi��o do "Se" na parte do resumo final, para mostrar
   // os resultados das partes acima ("OPS" e "OP").
   Escreval()
   Escolha OPS
   Caso 1
      EscrevaL("Voc� escolheu: Rio de Janeiro - B�zios - Salvador")
   Caso 2
      EscrevaL("Voc� escolheu: Santos - Ilha Bela - Rio")
   Caso 3
      EscrevaL("Voc� escolheu: Fortaleza - Recife - Natal")
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
      Escreval ("Trajetoria: Rio de Janeiro - B�zios - Salvador")
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
      Escreval ("Per�odo da Viagem: Baixa Temporada")
      Escreval ()
   senao
      Se (OP = 2) entao
         Escreval ("Per�odo da Viagem: Alta Temporada")
         Escreval ()
      senao
         Se (OP = 3) entao
            Escreval ("Per�odo da Viagem: Feriado Prolongado")
            Escreval ()
         Fimse
      Fimse
   Fimse
   Escreval ("!!!FIM DO RESUMO DA RESERVA!!!")
Fimalgoritmo
