import "dart:io";

main() {
  List diasSemana = [
    "Domingo",
    "Segunda",
    "Terça",
    "Quarta",
    "Quinta",
    "Sexta",
    "Sábado",
  ];

  List<double> temperaturas = [];
  // Usando Generics ao definir o tipo dos dados da lista

  for (String dia in diasSemana) {
    // Usando for-in
    stdout.write("Temperatura média de $dia: ");
    temperaturas.add(double.parse(stdin.readLineSync()!));
  }

  double somaTemperaturas = temperaturas.fold(0, (a, b) => a + b);
  double mediaTemperatura = somaTemperaturas / temperaturas.length;

  int contDias = 0;

  for (double temperatura in temperaturas) {
    if (temperatura > mediaTemperatura) contDias++;
  }

  print(
    "Na semana, $contDias dias ficaram com a temperatura acima da média semanal.",
  );
}
