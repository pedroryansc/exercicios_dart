import "dart:io";

main(){
  List numeros;

  for(int i = 1; i <= 10; i++){
    stdout.write("$iº Número: ");
    numeros.add(double.parse(stdin.readLineSync()!));
  }

  String tipoNum;

  print("Números inseridos:");
  for(int i = 0; i < numeros.lenght; i++){
    par = numeros[i] % 2 == 0;

    if(par){
      tipoNum = "Par";
    } else{
      tipoNum = "Ímpar";
    }

    print("${i + 1}º - ${numeros[i]} - $tipoNum");
  }
}