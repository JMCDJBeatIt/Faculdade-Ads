algoritmo "CalculoReservaCliente"

var
   precoPorPessoa: Real
   quantidadeClientes: Inteiro
   valorTotalReserva: Real
   nomeClientePrincipal: Caractere

inicio
   Escreva("Informe o preco por pessoa da reserva: ")
   Leia(precoPorPessoa)

   Escreva("Informe a quantidade de clientes na reserva: ")
   Leia(quantidadeClientes)

   valorTotalReserva <- precoPorPessoa * quantidadeClientes

   Escreva("Informe o nome do cliente principal responsavel pela reserva: ")
   Leia(nomeClientePrincipal)

   EscrevaL() // Linha em branco
   EscrevaL("--- Dados Coletados ---")
   EscrevaL("Valor Total Calculado: R$", valorTotalReserva:8:2)
   EscrevaL("Cliente Principal Registrado: ", nomeClientePrincipal)
   EscrevaL("-----------------------")


fimalgoritmo
