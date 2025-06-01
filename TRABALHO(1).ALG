Algoritmo "trabalho"
var
   quantidadecabine: inteiro
   valortotal: real
   Op: inteiro
   parcelar: inteiro
   pacotes: vetor [1..6] de caractere
   formapagamento: inteiro
   cabine: vetor [1..6] de real
inicio

   quantidade cabine <-

   pacote [] <- "Cabine simples"
   cabine [] <-  500.00
   pacote [] <- "Cabine dupla"
   cabine [] <-  900.00
   pacote [] <- "Cabine luxo"
   cabine [] <-  1.500
   pacote [] <- "Suite familiar"
   cabine [] <-  2.000
   pacote [] <- "Suite premimum"
   cabine [] <-  3.000
   pacote [] <- "Suite vip"
   cabine [] <-  5.000




   repita
      escreval("Escolha forma de pagamento")
      escreval("1) Cartão de credito")
      escreval("2) Cartão de debito ")
      escreval("3) Pix")
      leia(op)

      escolha op
      caso 1
         escreval ("pagamento com cartão de credito")
         escreval ("Deseja parcelar? Sim/não")
         leia (formapagamento)
         se formapagamento = "sim" então
            escreval ("Em quantas vezes deseja parcelar?")
            leia (parcelar)
            escreval ("valor total:R$", valortotal)
            escreval ("parcelar",  parcelar,  " vezes de R$", (valortotal/parcelar))
            escreval ("pagamento concluido")
         senão
            escreval ("Pagamento a vista. valor total:R$", valortotal)
         fimse
      caso 2
         escreval ("Pagamento cartão de debito")
         escreval ("valor total:R$", valortotal )
         escreval ("pagamento concluido")
      caso 3
         escreval ("Pagamento com pix")
         escreval ("valor total:R$",  valortotal)
         escreval ("pagamento concluido")
      outrocaso
         escreval ("Opção invalida, tente novamente")

      fimescolha
   ate op <= 3

fimescolha




Fimalgoritmo





















