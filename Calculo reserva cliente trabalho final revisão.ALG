//FAVOR VERIFIQUE SE VOC� COLOCOU O "FIMSE" depois de cada "SE" OU "SENAO",
//E UTILIZE O "LIMPARTELA", PARA MELHOR VISUALIZA��O DO PROJETO.
// POIS, EST� MUITO POLUIDO VISUALMENTE.
//UTILIZE TAMB�M ESPA�AMENTO EM TEXTO, EXEMPLOR "Escreval()"
//VERIFIQUE SE � NECESSARIO UTILIZAR "VETOR",ACREDITO QUE � POSSIVEL FAZAER
//DE MANEIRA MAIS SIMPLES.
Algoritmo "Calculo reserva cliente trabalho final revis�o"

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
   Escreval("1 - Cabine Simples (m�x. 1 pessoa) Pacote de: R$ 500,00")
   Escreval("2 - Cabine Dupla (m�x. 2 pessoas) Pacote de: R$ 900,00")
   Escreval("3 - Cabine Luxo (m�x. 3 pessoas) Pacote de: R$ 1,500.00")
   Escreval("4 - Su�te Familiar (m�x. 4 pessoas) Pacote de: R$ 2,000.00")
   Escreval("5 - Su�te Premium (m�x. 5 pessoas) Pacote de: R$ 3,000.00")
   Escreval("6 - Su�te vip (m�x. 7 pessoas) Pacote de: R$ 5,000.00")

   quantidadeClientes <- 1

   para i de 1 ate quantidadeClientes faca
      Escreval("=== Cabine ", i, " ===")

      // Ler a op��o da cabine
      Escreva("Qual cabine voc� deseja? ")
      Leia(opcao)

      // Definir capacidade m�xima conforme a cabine escolhida
      Se opcao = 1 ent�o
         CapacidadeMaxima <- 1
      Senao
         Se opcao = 2 ent�o
            CapacidadeMaxima <- 2
         Senao
            Se opcao = 3 ent�o
               CapacidadeMaxima <- 3
            Senao
               Se opcao = 4 ent�o
                  CapacidadeMaxima <- 4
               Senao
                  Se opcao = 5 ent�o
                     CapacidadeMaxima <- 5
                  Senao
                     Se opcao = 6 ent�o
                        CapacidadeMaxima <- 7
                     Senao
                        Escreval("Op��o inv�lida!")
                        // Se quiser, pode repetir a leitura da op��o aqui, mas por enquanto segue
                        CapacidadeMaxima <- 0
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
      // Validar a quantidade de pessoas, n�o pode passar da capacidade m�xima
      Se CapacidadeMaxima > 0 ent�o
         Repita
            Escreva("Digite a quantidade de pessoas para a cabine escolhida (m�x. ", CapacidadeMaxima, "): ")
            Leia(quantidadePessoas)

            Se quantidadePessoas > CapacidadeMaxima ent�o
               Escreval("Quantidade inv�lida! O m�ximo para essa cabine � ", CapacidadeMaxima, ". Tente novamente.")
            FimSe
         At� quantidadePessoas <= CapacidadeMaxima
      FimSe

      // Pre�o do pacote
      Escreva("Pre�o do pacote: ")
      Leia(precoPorPacote)

      valorTotalCabine <- precoPorPacote * quantidadePessoas

      Escreva("Pessoa respons�vel pela cabine 1: ")
      Leia(pessoa[1].nome)

   fimPara
Fimalgoritmo