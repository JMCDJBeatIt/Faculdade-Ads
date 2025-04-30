Algoritmo "Sistema de Gestao de Estoque"
//Algoritimo adaptado com base na aula 12 do prof tiago e imagem.
Tipo ItemEstoque = Registro
   nome : caracter
   quantidade : real // Usando real para compatibilidade, pode ser inteiro se quantidade for sempre inteira
FimRegistro
Var
   opcao : inteiro
   estoque : vetor [1..5] de ItemEstoque // Capacidade para 5 itens no estoque

Funcao pegar_proxima_posicao_Livre() : inteiro
Var
   i : inteiro
Inicio
   Para i de 1 ate 5 Faça
      Se (estoque[i].nome = "") Entao
         Retorne i
         Interrompa
      FimSe
   FimPara
   Retorne 0 // Retorna 0 se nao encontrar posicao livre
FimFuncao

Procedimento mostrar_lista()
Var
   i : inteiro
Inicio
   LimpaTela()
   Escreval ("LISTA DE ESTOQUE")
   Escreval()
   Escreval (" i | Nome | Quantidade ")
   Para i de 1 ate 5 Faça
      Se (estoque[i].nome <> "") Entao
         Escreva (i)
         Escreva (" | ", estoque[i].nome)
         Escreval (" | ", estoque[i].quantidade)
      FimSe
   FimPara
   Escreval()
   Escreval("Pressione ENTER para continuar...")
   LeiaAlgoritmo // Pausa a execucao ate o usuario pressionar ENTER
FimProcedimento
//Mostra a lista de estoque

Procedimento add()
Var
   posicao_livre : inteiro
Inicio
   LimpaTela()
   posicao_livre <- pegar_proxima_posicao_Livre()

   Se posicao_livre > 0 Entao
      Escreval ("ADICIONAR PRODUTOS NO ESTOQUE")
      Escreval("Adicionar à posição: ", posicao_livre)
      Escreval()
      Escreval ("Informe o nome do produto: ")
      Leia(estoque[posicao_livre].nome)
      Escreval ("Informe a quantidade: ")
      Leia(estoque[posicao_livre].quantidade)

      LimpaTela()
      Escreval(" OK - Produto adicionado com sucesso!")
      Escreval()
   Senao
      LimpaTela()
      Escreval(" ERRO - Estoque cheio! Não é possível adicionar mais produtos.")
      Escreval()
   FimSe
   Escreval("Pressione ENTER para continuar...")
   LeiaAlgoritmo // Pausa a execucao ate o usuario pressionar ENTER
FimProcedimento
//Adiciona produtos ao estoque

Procedimento alterar()
Var
   i : inteiro
Inicio
   LimpaTela()
   Escreval ("ALTERAR UM PRODUTO")
   Escreval()
   mostrar_lista() // Mostra a lista para o usuario escolher o item

   Escreva ("Informe o número do item a ser alterado: ")
   Leia(i)

   // Verifica se a posicao informada eh valida e contem um item
   Se (i >= 1) e (i <= 5) e (estoque[i].nome <> "") Entao
      Escreval ("Informe o novo nome do produto: ")
      Leia(estoque[i].nome)
      Escreval ("Informe a nova quantidade: ")
      Leia(estoque[i].quantidade)

      LimpaTela()
      Escreval (" OK - Produto atualizado com sucesso!")
      Escreval()
   Senao
      LimpaTela()
      Escreval(" ERRO - Posição inválida ou vazia!")
      Escreval()
   FimSe
   Escreval("Pressione ENTER para continuar...")
   LeiaAlgoritmo // Pausa a execucao ate o usuario pressionar ENTER
FimProcedimento
//Altera produtos no estoque

Procedimento remover()
Var
   i : inteiro
Inicio
   LimpaTela()
   Escreval ("REMOVER UM PRODUTO")
   Escreval()
   mostrar_lista() // Mostra a lista para o usuario escolher o item

   Escreva ("Informe o número do item a ser removido: ")
   Leia(i)

   // Verifica se a posicao informada eh valida e contem um item
   Se (i >= 1) e (i <= 5) e (estoque[i].nome <> "") Entao
      estoque[i].nome <- ""
      estoque[i].quantidade <- 0

      LimpaTela()
      Escreval (" OK - Produto removido com sucesso!")
      Escreval()
   Senao
      LimpaTela()
      Escreval(" ERRO - Posição inválida ou vazia!")
      Escreval()
   FimSe
   Escreval("Pressione ENTER para continuar...")
   LeiaAlgoritmo // Pausa a execucao ate o usuario pressionar ENTER
FimProcedimento
//Remove produtos do estoque

Inicio
   // Inicializa o estoque (opcional, mas boa pratica)
   Para i de 1 ate 5 Faca
      estoque[i].nome <- ""
      estoque[i].quantidade <- 0
   FimPara

   Repita
      LimpaTela() // Limpa a tela antes de exibir o menu
      Escreval ("Sistema de Gestão de Estoque")
      Escreval ("Selecione uma opção: ")
      Escreval (" 1 - Ver a lista de estoque")
      Escreval (" 2 - Adicionar produto")
      Escreval (" 3 - Alterar um produto")
      Escreval (" 4 - Remover um produto")
      Escreval (" 0 - Sair")
      Escreva  ("Digite a opção: ")
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
      OutroCaso // Para opções diferentes das esperadas
         LimpaTela()
         Escreval("Opção inválida!")
         Escreval()
         Escreval("Pressione ENTER para continuar...")
         LeiaAlgoritmo
      FimEscolha
   Ate (opcao = 0)

   LimpaTela()
   Escreval("Saindo do sistema. Até Breve!")
Fimalgoritmo
