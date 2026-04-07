import "dart:io";

main(){ // Usando o tipo var, o qual permite definir o tipo de dado da variável no momento de sua criação
  stdout.write("Percentual de reajuste de salário: ");
  var percReajuste = double.parse(stdin.readLineSync());

  stdout.write("Nome: ");
  var nome = stdin.readLineSync();

  stdout.write("Salário mensal de $nome: R$ ");
  var salarioMensal = double.parse(stdin.readLineSync());

  var novoSalario = salarioMensal + (salarioMensal * percReajuste);

  print("Salário de $nome após o reajuste de $percReajuste%: R$ $novoSalario");
}