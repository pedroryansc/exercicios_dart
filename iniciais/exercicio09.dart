import "dart:io";

main() {
  stdout.write("Nome: ");
  String nome = stdin.readLineSync()!;

  print("Quanto $nome ganha por hora?");
  stdout.write("R\$ ");
  double ganhoHora = double.parse(stdin.readLineSync()!);

  stdout.write("Horas trabalhadas no mês: ");
  double horasTrabalhadas = double.parse(stdin.readLineSync()!);

  double salarioBruto = ganhoHora * horasTrabalhadas;

  double impostoRenda = salarioBruto * 0.11;
  double inss = salarioBruto * 0.08;
  double sindicato = salarioBruto * 0.05;

  double salarioLiquido = salarioBruto - (impostoRenda + inss + sindicato);

  print("Salário bruto de $nome: R\$ ${salarioBruto.toStringAsFixed(2)}");
  print("Imposto de Renda (11%): R\$ $impostoRenda");
  print("INSS (8%): R\$ $inss");
  print("Sindicato (5%): R\$ $sindicato");
  print("Salário líquido de $nome: R\$ ${salarioLiquido.toStringAsFixed(2)}");
}
