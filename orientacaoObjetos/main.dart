import "cliente.dart";
import "produto.dart";
import "venda.dart";
import "venda_item.dart";

main() {
  Produto produto1 = Produto(
    codigo: 1,
    nome: "Jogo - Super Mario Wonder",
    preco: 329,
    desconto: 33,
  );
  Produto produto2 = Produto(
    codigo: 2,
    nome: "Jogo - Metal Gear Solid 4: Guns of the Patriots",
    preco: 164.90,
  );
  Produto produto3 = Produto(
    codigo: 3,
    nome: "Jogo - Pokémon Pokopia",
    preco: 389,
  );

  Cliente cliente1 = Cliente("Pedro", "4002-8922");

  VendaItem item1 = VendaItem(produto: produto1, quantidade: 2);
  VendaItem item2 = VendaItem(produto: produto2, quantidade: 1);
  VendaItem item3 = VendaItem(produto: produto3, quantidade: 1);

  Venda vendaCliente = Venda(cliente: cliente1, itens: [item1, item2, item3]);

  print("Valor total do pedido: ${vendaCliente.getValorTotal}");
}
