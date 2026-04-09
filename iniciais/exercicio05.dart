import "dart:io";

main() {
  int quantNotas = 4;
  List pesos = [];
  List notas = [];

  for (int i = 1; i <= quantNotas; i++) {
    stdout.write("Peso da Nota $i: ");
    pesos.add(double.parse(stdin.readLineSync()!));
  }

  double totalPesos = pesos.fold(0, (a, b) => a + b);

  stdout.write("Nome: ");
  String nome = stdin.readLineSync()!;

  for (int i = 1; i <= quantNotas; i++) {
    stdout.write("Nota $i de $nome: ");
    notas.add(double.parse(stdin.readLineSync()!));
  }

  double notasComPeso = 0;
  for (int i = 0; i < quantNotas; i++) {
    notasComPeso += notas[i] * pesos[i];
  }

  double mediaPonderada = notasComPeso / totalPesos;

  print("Média ponderada de $nome: ${mediaPonderada.toStringAsFixed(1)}");
}
