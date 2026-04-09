import "dart:io";

// Não há a necessidade de criar uma classe para executar o método Main
main() {
  stdout.write("Insira um número para obter seu antecessor: ");
  String entrada = stdin.readLineSync()!;
  int numero = int.parse(entrada);
  print("Antecessor de $numero: ${numero - 1}");
}
