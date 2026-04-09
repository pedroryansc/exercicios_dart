import "dart:io";

main() {
  stdout.write("Nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Altura de $nome: ");
  double h = double.parse(stdin.readLineSync()!);

  print("Gênero (1 - Feminino; 2 - Masculino):");
  int genero = int.parse(stdin.readLineSync()!);

  double pesoIdeal = 0;

  switch (genero) {
    case 1:
      pesoIdeal = 62.1 * h - 44.7;
    case 2:
      pesoIdeal = 72.7 * h - 58;
  }

  print("Peso ideal para $nome: ${pesoIdeal.toStringAsFixed(2)}");
}
