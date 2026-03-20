import "dart:io";

main() {
  stdout.write("Insira um número para obter seu antecessor: ");
  String entrada = stdin.readLineSync()!;
  int numero = int.parse(entrada);
  print("Antecessor de $numero: ${numero - 1}");
}
