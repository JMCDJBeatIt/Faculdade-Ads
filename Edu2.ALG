algoritmo "ReservaCabine"

Var
   precoPorPessoa: Real
   quantidadeClientes: Inteiro
   valorTotalReserva: Real
   nomeClientePrincipal: Caractere
   tipoCabine: Caractere
   numeroPessoasReserva: Inteiro

Inicio
 Escreva("Informe o preço por pessoa da reserva: ")
   Leia(precoPorPessoa)

   Escreva("Informe a quantidade de clientes na reserva: ")
   Leia(quantidadeClientes)

   valorTotalReserva <- precoPorPessoa * quantidadeClientes

   Escreva("Informe o nome do cliente principal responsavel pela reserva: ")
   Leia(nomeClientePrincipal)
