Algoritmo ClassificaNumerosSemInstrucoes

Var
   numeros : vetor [1..100] de Inteiro
   pares     : vetor [1..100] de Inteiro
   impares   : vetor [1..100] de Inteiro
   primos    : vetor [1..100] de Inteiro
   compostos : vetor [1..100] de Inteiro
   contPares     : Inteiro
   contImpares   : Inteiro
   contPrimos    : Inteiro
   contCompostos : Inteiro
   i, j, numAtual : Inteiro
   ehPrimo : Logico
   opcaoMenu : Inteiro
   pausa : Caractere

Inicio
   contPares := 0
   contImpares := 0
   contPrimos := 0
   contCompostos := 0

   Para i de 1 ate 100 faca
      numeros[i] := RandI(200) + 1
   FimPara

   Para i de 1 ate 100 faca
      numAtual := numeros[i]

      Se (numAtual mod 2 = 0) entao
         contPares := contPares + 1
         pares[contPares] := numAtual
      Senao
         contImpares := contImpares + 1
         impares[contImpares] := numAtual
      FimSe

      ehPrimo := Falso
      Se numAtual > 1 entao
         Se numAtual = 2 entao
            ehPrimo := Verdadeiro
         Senao
            Se numAtual mod 2 <> 0 entao
               ehPrimo := Verdadeiro
               j := 3
               Enquanto (j * j <= numAtual) E (ehPrimo) faca
                  Se (numAtual mod j = 0) entao
                     ehPrimo := Falso
                  FimSe
                  j := j + 2
               FimEnquanto
            EndIf
         EndIf
      EndIf

      Se ehPrimo entao
          contPrimos := contPrimos + 1
          primos[contPrimos] := numAtual
      Senao
          Se numAtual > 1 entao
             contCompostos := contCompostos + 1
             compostos[contCompostos] := numAtual
          EndIf
      FimSe
   FimPara

   Leia(pausa)

   opcaoMenu := -1

   Repita
      LimpaTela
      Leia(opcaoMenu)

      Escolha opcaoMenu
         Caso 1
            Se contPares > 0 entao
               Para i de 1 ate contPares faca
                  Escreva(pares[i], " ")
               FimPara
               Escreval()
            FimSe

         Caso 2
            Se contImpares > 0 entao
               Para i de 1 ate contImpares faca
                  Escreva(impares[i], " ")
               FimPara
               Escreval()
            FimSe

         Caso 3
            Se contPrimos > 0 entao
               Para i de 1 ate contPrimos faca
                  Escreva(primos[i], " ")
               FimPara
               Escreval()
            FimSe

         Caso 4
            Se contCompostos > 0 entao
               Para i de 1 ate contCompostos faca
                  Escreva(compostos[i], " ")
               FimPara
               Escreval()
            FimSe

         Caso 0

         OutroCaso

      FimEscolha

      Se opcaoMenu <> 0 entao
         Leia(pausa)
      FimSe

   Ate opcaoMenu = 0

FimAlgoritmo
