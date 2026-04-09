import "dart:io";

main() {
  stdout.write("Temperatura em graus Fahrenheit (°F): ");
  double tempF = double.parse(stdin.readLineSync()!);

  double tempC = 5 * (tempF - 32) / 9;

  print(
    "$tempF°F convertida para graus Celsius: ${tempC.toStringAsFixed(2)}°C",
  );
}
