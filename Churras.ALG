Algoritmo "Churrasco T2"
//Algoritimo com base na aula 12 do prof tiago.
Tipo Produto = Registro
   nome : caracter
   preco, quantidade, total : real
FimRegistro
Var
   opcao : inteiro
   itens : vetor [1..5] de Produto

Funcao pegar_proxima_posicao_Livre() : inteiro
Var
   i : inteiro
Inicio
   Para i de 1 ate 5 Faça
      Se (itens[i].nome = "") Entao
         Retorne i
         Interrompa
      FimSe
   FimPara
FimFuncao
Procedimento mostrar_lista()
Var
   i : inteiro
Inicio
   LimpaTela()
   Escreval ("LISTA DE ITENS")
   Escreval()
   Escreval (" i | Nome | Preço | Qnt | Total ")
   Para i de 1 ate 5 Faça
      Se (itens[i].nome <> "") Entao
         Escreva (i)
         Escreva (" | ", itens[i].nome)
         Escreva (" | ", itens[i].preco)
         Escreva (" | ", itens[i].quantidade)
         Escreval (" | ", itens[i].total)
      FimSe
   FimPara
   Escreval()
FimProcedimento
//Mostra a lista
Procedimento add()
Var
   posicao_livre : inteiro
Inicio
   LimpaTela()
   posicao_livre <- pegar_proxima_posicao_Livre()
   Escreval ("ADICIONAR ITENS NO CHURRASCO")
   Escreval("Adicionar à posição: ", posicao_livre)
   Escreval()
   Escreval ("Informe o nome do item: ")
   Leia(itens[posicao_livre].nome)
   Escreval ("Digite o preço: ")
   Leia(itens[posicao_livre].preco)
   Escreval ("Informe a quantidade: ")
   Leia(itens[posicao_livre].quantidade)
   itens[posicao_livre].total <- itens[posicao_livre].quantidade * itens[posicao_livre].preco

   LimpaTela()
   Escreval(" OK - item adicionado com sucesso!")
   Escreval()
FimProcedimento
//Adiciona itens
Procedimento alterar()
Var
   i : inteiro
Inicio
   LimpaTela()
   Escreval ("ALTERAR UM ITEM")
   Escreval()
   mostrar_lista()
   Escreval()
   Escreva ("Informe o número do item a ser alterado: ")
   Leia(i)

   Escreval ("Informe o nome do item: ")
   Leia(itens[i].nome)
   Escreval ("Digite o preço: ")
   Leia(itens[i].preco)
   Escreval ("Informe a quantidade: ")
   Leia(itens[i].quantidade)
   itens[i].total <- itens[i].quantidade * itens[i].preco

   LimpaTela()
   Escreval (" OK - Item atualizado com sucesso!")
   Escreval()

FimProcedimento
//Altera itens
Procedimento remover()
Var
   i : inteiro
Inicio
   LimpaTela()
   Escreval ("REMOVER UM ITEM")
   Escreval()
   mostrar_lista()
   Escreval()
   Escreva ("Informe o número do item a ser removido: ")
   Leia(i)
   
   itens[i].nome <- ""
   itens[i].preco <- 0
   itens[i].quantidade <- 0
   itens[i].total <- 0
   
   LimpaTela()
   Escreval (" OK - Item removido com sucesso!")
   Escreval()
   
FimProcedimento
//Remove itens
Inicio
   Repita
      Escreval ("Sistema da lista de churrasco")
      Escreval ("Selecione uma opção: ")
      Escreval (" 1 - Ver a lista de itens")
      Escreval (" 2 - Adicionar item")
      Escreval (" 3 - Alterar um item")
      Escreval (" 4 - Remover um item")
      Escreval (" 0 - Sair")
      Escreva  ("Digite a opçâo: ")
      Leia (opcao)

      Escolha(opcao)
      Caso 1
         mostrar_lista()
      Caso 2
         add()
      Caso 3
         alterar()
      Caso 4
         remover()
      FimEscolha
   Ate (opcao = 0)

   Escreval("Até Breve!")
Fimalgoritmo
