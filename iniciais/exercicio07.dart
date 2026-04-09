import "dart:io";

main() {
  stdout.write("1º Número inteiro: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("2º Número inteiro: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Número real: ");
  double num3 = double.parse(stdin.readLineSync()!);

  double resultadoA = (num1 * 2) * (num2 / 2);
  double resultadoB = (num1 * 3) + num3;

  print("Produto do dobro de $num1 com metade de $num2 = $resultadoA");
  print("Soma do triplo de $num1 com $num3 = $resultadoB");
}
