Algoritmo ClassificaNumeros

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
   i, j, numAtual, divisores : Inteiro
   ehPrimo : Logico

Inicio
   contPares := 0
   contImpares := 0
   contPrimos := 0
   contCompostos := 0

   Escreval("Digite 100 números inteiros:")
   Para i de 1 ate 100 faca
      Escreva("Número ", i, ": ")
      Leia(numeros[i])
   FimPara
   LimpaTela

   Para i de 1 ate 100 faca
      numAtual := numeros[i]

      Se (numAtual mod 2 = 0) entao
         contPares := contPares + 1
         pares[contPares] := numAtual
      Senao
         contImpares := contImpares + 1
         impares[contImpares] := numAtual
      FimSe

      Se numAtual > 1 entao
         divisores := 0
         Para j de 1 ate numAtual faca
            Se (numAtual mod j = 0) entao
               divisores := divisores + 1
            FimSe
         FimPara

         Se (divisores = 2) entao
            contPrimos := contPrimos + 1
            primos[contPrimos] := numAtual
         Senao
            contCompostos := contCompostos + 1
            compostos[contCompostos] := numAtual
         FimSe
      FimSe
   FimPara

   Escreval()
   Escreval("Resultados da Classificação:")
   Escreval()

   Escreval("A) Números Pares (", contPares, " encontrados):")
   Se contPares > 0 entao
      Para i de 1 ate contPares faca
         Escreva(pares[i], " ")
      FimPara
      Escreval()
   Senao
      Escreval("Nenhum número par encontrado.")
   FimSe
   Escreval()

   Escreval("B) Números Ímpares (", contImpares, " encontrados):")
    Se contImpares > 0 entao
      Para i de 1 ate contImpares faca
         Escreva(impares[i], " ")
      FimPara
      Escreval()
   Senao
      Escreval("Nenhum número ímpar encontrado.")
   FimSe
   Escreval()

   Escreval("C) Números Primos (", contPrimos, " encontrados):")
    Se contPrimos > 0 entao
      Para i de 1 ate contPrimos faca
         Escreva(primos[i], " ")
      FimPara
      Escreval()
   Senao
      Escreval("Nenhum número primo encontrado.")
   FimSe
   Escreval()

   Escreval("D) Números Compostos (", contCompostos, " encontrados):")
   Se contCompostos > 0 entao
      Para i de 1 ate contCompostos faca
         Escreva(compostos[i], " ")
      FimPara
      Escreval()
   Senao
      Escreval("Nenhum número composto encontrado.")
   FimSe
   Escreval()

FimAlgoritmo
