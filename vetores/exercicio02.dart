import "dart:io";

main() {
  List vetorA = [];
  List vetorB = [];

  for (int i = 1; i <= 10; i++) {
    stdout.write("$iº Número do vetor A: ");
    vetorA.add(double.parse(stdin.readLineSync()!));
  }

  for (int i = 1; i <= 10; i++) {
    stdout.write("$iº Número do vetor B: ");
    vetorB.add(double.parse(stdin.readLineSync()!));
  }

  List vetorC = [];

  for (int i = 0; i < 10; i++) {
    vetorC.add(vetorA[i] * vetorB[i]);
  }

  print("Números do vetor C (A * B) = $vetorC");
}
