import "dart:io";

main() {
  stdout.write("Nome: ");
  String nome = stdin.readLineSync()!;

  List notas = [];
  List pesos = [2, 3, 5];

  for (int i = 1; i <= 3; i++) {
    stdout.write("Nota $i de $nome: ");
    notas.add(double.parse(stdin.readLineSync()!));
  }

  num totalPesos = pesos.fold(0, (a, b) => a + b);
  double mediaPonderada =
      (notas[0] * pesos[0] + notas[1] * pesos[1] + notas[2] * pesos[2]) /
      totalPesos;

  print("Média final de $nome: ${mediaPonderada.toStringAsFixed(2)}");
}
