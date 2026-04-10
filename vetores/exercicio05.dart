import "dart:io";

main() {
  List nomes = [];
  List salarios = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Nome da $iª pessoa: ");
    nomes.add(stdin.readLineSync()!);

    stdout.write("Salário de ${nomes[i - 1]}: R\$ ");
    salarios.add(double.parse(stdin.readLineSync()!));
  }

  salarios = salarios.map((n) => n + (n * 0.08)).toList();

  print("Salários após reajuste de 8%:");
  for (int i = 0; i < nomes.length; i++) {
    print("${nomes[i]} - R\$ ${salarios[i]}");
  }
}
