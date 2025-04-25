algoritmo "CalculoReservaCliente"

var
   precoPorPessoa: Real
   quantidadeClientes: Inteiro
   valorTotalReserva: Real
   nomeClientePrincipal: Caractere

inicio
   Escreval("Informe o preco por pessoa da reserva: ")
   Leia(precoPorPessoa)

   Escreval("Informe a quantidade de clientes na reserva: ")
   Leia(quantidadeClientes)

   valorTotalReserva <- precoPorPessoa * quantidadeClientes

   Escreval("Informe o nome do cliente principal responsavel pela reserva: ")
   Leia(nomeClientePrincipal)

   Escreval() // Linha em branco
   Escreval("--- Dados Coletados ---")
   Escreval("Valor Total Calculado: R$", valorTotalReserva:8:2)
   Escreval("Cliente Principal Registrado: ", nomeClientePrincipal)
   Escreval("-----------------------")


fimalgoritmo
