//FAVOR VERIFIQUE SE VOCÊ COLOCOU O "FIMSE" depois de cada "SE" OU "SENAO",
//E UTILIZE O "LIMPARTELA", PARA MELHOR VISUALIZAÇÃO DO PROJETO.
// POIS, ESTÁ MUITO POLUIDO VISUALMENTE.
//UTILIZE TAMBÉM ESPAÇAMENTO EM TEXTO, EXEMPLOR "Escreval()"
//VERIFIQUE SE É NECESSARIO UTILIZAR "VETOR",ACREDITO QUE É POSSIVEL FAZAER
//DE MANEIRA MAIS SIMPLES.
Algoritmo "Calculo reserva cliente trabalho final revisão"

tipo cliente = registro
   nome: caractere
fimregistro

var
   precoPorPacote: real
   quantidadeClientes, i, parcelas, quantidadePessoas, opcao, CapacidadeMaxima: inteiro
   resposta: caractere
   maiuscula:caractere
   pessoa : vetor[1..1] de cliente
   valorTotalCabine: real

inicio
   Escreval("Seja bem vindos!")
   Escreval("Menu de Cabines:")
   Escreval("1 - Cabine Simples (máx. 1 pessoa) Pacote de: R$ 500,00")
   Escreval("2 - Cabine Dupla (máx. 2 pessoas) Pacote de: R$ 900,00")
   Escreval("3 - Cabine Luxo (máx. 3 pessoas) Pacote de: R$ 1,500.00")
   Escreval("4 - Suíte Familiar (máx. 4 pessoas) Pacote de: R$ 2,000.00")
   Escreval("5 - Suíte Premium (máx. 5 pessoas) Pacote de: R$ 3,000.00")
   Escreval("6 - Suíte vip (máx. 7 pessoas) Pacote de: R$ 5,000.00")

   quantidadeClientes <- 1

   para i de 1 ate quantidadeClientes faca
      Escreval("=== Cabine ", i, " ===")

      // Ler a opção da cabine
      Escreva("Qual cabine você deseja? ")
      Leia(opcao)

      // Definir capacidade máxima conforme a cabine escolhida
      Se opcao = 1 então
         CapacidadeMaxima <- 1
      Senao
         Se opcao = 2 então
            CapacidadeMaxima <- 2
         Senao
            Se opcao = 3 então
               CapacidadeMaxima <- 3
            Senao
               Se opcao = 4 então
                  CapacidadeMaxima <- 4
               Senao
                  Se opcao = 5 então
                     CapacidadeMaxima <- 5
                  Senao
                     Se opcao = 6 então
                        CapacidadeMaxima <- 7
                     Senao
                        Escreval("Opção inválida!")
                        // Se quiser, pode repetir a leitura da opção aqui, mas por enquanto segue
                        CapacidadeMaxima <- 0
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
      // Validar a quantidade de pessoas, não pode passar da capacidade máxima
      Se CapacidadeMaxima > 0 então
         Repita
            Escreva("Digite a quantidade de pessoas para a cabine escolhida (máx. ", CapacidadeMaxima, "): ")
            Leia(quantidadePessoas)

            Se quantidadePessoas > CapacidadeMaxima então
               Escreval("Quantidade inválida! O máximo para essa cabine é ", CapacidadeMaxima, ". Tente novamente.")
            FimSe
         Até quantidadePessoas <= CapacidadeMaxima
      FimSe

      // Preço do pacote
      Escreva("Preço do pacote: ")
      Leia(precoPorPacote)

      valorTotalCabine <- precoPorPacote * quantidadePessoas

      Escreva("Pessoa responsável pela cabine 1: ")
      Leia(pessoa[1].nome)

   fimPara
Fimalgoritmo