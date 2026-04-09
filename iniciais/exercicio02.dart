import "dart:io";

main() {
  print("Votação da Cidade \n");

  print("Qual é a quantidade total de eleitores?");
  int quantEleitores = int.parse(stdin.readLineSync()!);

  print("Qual é a quantidade de votos em branco?");
  int votosBranco = int.parse(stdin.readLineSync()!);

  print("Qual é a quantidade de votos nulos?");
  int votosNulos = int.parse(stdin.readLineSync()!);

  print("Qual é a quantidade de votos válidos?");
  int votosValidos = int.parse(stdin.readLineSync()!);

  double percVotosBranco = (votosBranco / quantEleitores) * 100;

  double percVotosNulos = (votosNulos / quantEleitores) * 100;

  double percVotosValidos = (votosValidos / quantEleitores) * 100;

  print(
    "Percentual de votos em branco: ${percVotosBranco.toStringAsFixed(2)}%",
  );
  print("Percentual de votos nulos: ${percVotosNulos.toStringAsFixed(2)}%");
  print("Percentual de votos válidos: ${percVotosValidos.toStringAsFixed(2)}%");
}
