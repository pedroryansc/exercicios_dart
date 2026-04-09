import "dart:io";

main(){
  List<int> numeros;

  for(int i = 1; i <= 10; i++){
    stdout.write("$iº Número: ");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  List fatoriais;
  int numFatorial;

  for(int numero in numeros){
    numFatorial = numero != 0 ? numero : 1;

    for(int i = numero - 1; i > 1; i--){
      numFatorial = numFatorial * i;
    }

    fatoriais.add(numFatorial);
  }

  print("Fatorial dos números inseridos:");
  for(int i = 0; i < numeros.length; i++){
    print("${numeros[i]}! = ${fatoriais[i]}")
  }
}