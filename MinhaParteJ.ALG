Algoritmo "Minha Parte J"
//Exibir um resumo da reserva, com: tipo da cabine, número de pessoas, valor total e nome do cliente.
//P5 jeff.
//NAO MEXAM NO MEU CODIGO ATE TODO MUNDO TERMINAR SUA PARTE, ELE ESTA COMPLETAMENTE FUNCIONAL SEUS ANIMAIS.
var
   VTR: Real
   // Valor total da reserva. VTR = ValorTotalReserva
   NCP, TC: Caractere
   // NCP = NomeClientePrincipal. Nome do cliente principal
   // TC = TipoCabine. Tipo de cabine
   NPR: Inteiro
   // NPR = NumeroPessoasReserva. Quantidade de pessoas na reserva

inicio
   // IMPORTANTE!!!!!!!!!!!!!!: Para que esta parte funcione AGORA de forma independente,
   // ela precisa pedir todos os dados que exibira no resumo.
   // QUANDO INTEGRAREM ao codigo final do time, as linhas abaixo que leem
   // 'VTR', 'NCP' e 'NPR'
   // PROVAVELMENTE DEVERAO SER REMOVIDAS a nao ser que prefiram assim, pois esses dados virao de outras
   // partes do codigo (como a parte do Cadete e do Eduardo).
   // A leitura do 'TC' pode permanecer aqui ou ser movida dependendo
   // de onde essa informacao for colocada no codigo final.

   // !!Inicio da obtencao de dados e resumo da reserva!!

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
   // !!Fim da obtencao independete de dados e resumo, para a execucao. possivelmente precisa ser alterado no codigo final, ou nao nunca se sabe!!.

   LimpaTela()
   Escreval ()
   Escreval ("!!!RESUMO DA RESERVA!!!")
   Escreval ()
   Escreval ("Tipo da Cabine: ",TC)
   Escreval ()
   Escreval ("Numero de Pessoas: ",NPR)
   Escreval ()
   Escreval ("Valor Total da Reserva: R$", VTR:8:2) // Formata para 2 casas decimais
   Escreval ()
   Escreval ("Cliente Responsavel: ",NCP)
   Escreval ()
   Escreval ("!!!FIM DO RESUMO DA RESERVA!!!")

   // Mostra o resumo.


fimalgoritmo
