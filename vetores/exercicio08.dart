import "dart:io";

List intercalaNumeros(List vetorA, List vetorB){
  List vetorC;

  for(int i = 0; i < vetorA.length; i++){
    vetorC.add(vetorA[i]);
    vetorC.add(vetorB[i]);
  }

  return vetorC;
}

main(){
  List vetorA;
  List vetorB;

  for(int i = 1; i <= 10; i++){
    stdout.write("$iº Número do vetor A: ");
    vetorA.add(double.parse(stdin.readLineSync()!));
  }

  for(int i = 1; i <= 10; i++){
    stdout.write("$iº Número do vetor B: ");
    vetorB.add(double.parse(stdin.readLineSync()!));
  }

  List vetorC = intercalaNumeros(vetorA, vetorB);

  print("Lista com os números intercalados: $vetorC");
}