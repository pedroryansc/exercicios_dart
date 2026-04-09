import "dart:io";

main(){
  List numeros;

  for(int i = 1; i <= 8; i++){
    stdout.write("$iº Número: ");
    numeros.add(double.parse(stdin.readLineSync()!));
  }

  print("Números inseridos: $numeros");

  int cont = 0;
  for(double numero in numeros){
    if(numero % 6 == 0) cont++;
  }

  print("Entre os números inseridos, há $cont número(s) múltiplo(s) de 6.");
}