import "dart:io";

main(){
    List nomes;

    for(int i = 1; i <= 10; i++){
        stdout.write("$iº Nome: ");
        nomes.add(stdin.readLineSync()!);
    }

    print("Nomes inseridos:");
    for(int i = 0; i < 10; i++){
        print("${i + 1} ${nomes[i]}");
    }
}