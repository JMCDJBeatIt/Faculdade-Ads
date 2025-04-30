algoritmo "GerenciadorEstoque"
// Descrição: Programa simples para gerenciar estoque de uma loja.
// Autor: Gemini

var
   estoque : vetor[1..100] de Caractere // Array para armazenar os nomes dos produtos (limite de 100 itens)
   quantidade : vetor[1..100] de Inteiro // Array para armazenar a quantidade de cada produto
   totalItens : Inteiro // Contador de itens no estoque
   opcao : Inteiro // Opção do menu
   nomeProduto : Caractere // Nome do produto para operações
   quantidadeProduto : Inteiro // Quantidade do produto para operações
   encontrado : Logico // Flag para busca

inicio
   // Inicialização
   totalItens <- 0
   limpatela

   // Menu principal
   repita
      escreval("-----------------------------------")
      escreval("     GERENCIADOR DE ESTOQUE")
      escreval("-----------------------------------")
      escreval("1. Exibir estoque")
      escreval("2. Adicionar item")
      escreval("3. Remover item")
      escreval("4. Buscar item")
      escreval("5. Sair")
      escreval("-----------------------------------")
      escreva("Escolha uma opção: ")
      leia(opcao)
      limpatela

      escolha opcao
         caso 1
            // Exibir estoque
            escreval("--- ESTOQUE ATUAL ---")
            se totalItens = 0 entao
               escreval("Estoque vazio.")
            senao
               para i de 1 ate totalItens faca
                  escreval(i, ". ", estoque[i], " - Quantidade: ", quantidade[i])
               fimpara
            fimse
            escreval("---------------------")

         caso 2
            // Adicionar item
            se totalItens < 100 entao
               escreva("Digite o nome do produto a adicionar: ")
               leia(nomeProduto)
               escreva("Digite a quantidade: ")
               leia(quantidadeProduto)

               // Verifica se o produto já existe para apenas atualizar a quantidade
               encontrado <- falso
               para i de 1 ate totalItens faca
                  se estoque[i] = nomeProduto entao
                     quantidade[i] <- quantidade[i] + quantidadeProduto
                     encontrado <- verdadeiro
                     interrompa // Sai do loop assim que encontrar
                  fimse
               fimpara

               se nao encontrado entao
                  totalItens <- totalItens + 1
                  estoque[totalItens] <- nomeProduto
                  quantidade[totalItens] <- quantidadeProduto
                  escreval("Produto '", nomeProduto, "' adicionado ao estoque.")
               senao
                   escreval("Quantidade do produto '", nomeProduto, "' atualizada.")
               fimse
            senao
               escreval("Estoque cheio! Não é possível adicionar mais itens.")
            fimse

         caso 3
            // Remover item
            se totalItens > 0 entao
               escreva("Digite o nome do produto a remover: ")
               leia(nomeProduto)

               encontrado <- falso
               para i de 1 ate totalItens faca
                  se estoque[i] = nomeProduto entao
                     // Move os itens subsequentes para preencher o espaço
                     para j de i ate totalItens - 1 faca
                        estoque[j] <- estoque[j+1]
                        quantidade[j] <- quantidade[j+1]
                     fimpara
                     totalItens <- totalItens - 1
                     escreval("Produto '", nomeProduto, "' removido do estoque.")
                     encontrado <- verdadeiro
                     interrompa // Sai do loop assim que encontrar
                  fimse
               fimpara

               se nao encontrado entao
                  escreval("Produto '", nomeProduto, "' não encontrado no estoque.")
               fimse
            senao
               escreval("Estoque vazio. Nada para remover.")
            fimse

         caso 4
            // Buscar item
            se totalItens > 0 entao
               escreva("Digite o nome do produto a buscar: ")
               leia(nomeProduto)

               encontrado <- falso
               para i de 1 ate totalItens faca
                  se estoque[i] = nomeProduto entao
                     escreval("Produto encontrado: ", estoque[i], " - Quantidade: ", quantidade[i])
                     encontrado <- verdadeiro
                     interrompa // Sai do loop assim que encontrar
                  fimse
               fimpara

               se nao encontrado entao
                  escreval("Produto '", nomeProduto, "' não encontrado no estoque.")
               fimse
            senao
               escreval("Estoque vazio. Nada para buscar.")
            fimse

         caso 5
            // Sair
            escreval("Saindo do programa. Até mais!")

         outrocaso
            escreval("Opção inválida. Tente novamente.")
      fimescolha

      escreval("") // Linha em branco para melhor visualização
      escreva("Pressione ENTER para continuar...")
      leia(nomeProduto) // Pausa a execução até o usuário pressionar Enter
      limpatela

   ate opcao = 5

fimalgoritmo
