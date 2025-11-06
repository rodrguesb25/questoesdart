import 'dart:io';

void main() {
  // Solicita o nome do usuário
  stdout.write('Digite seu nome: ');
  String? nome = stdin.readLineSync();

  // Solicita a idade do usuário
  stdout.write('Digite sua idade: ');
  String? entradaIdade = stdin.readLineSync();

  if (entradaIdade != null && nome != null) {
    int idade = int.parse(entradaIdade);

    int faltam = 100 - idade;

    if (faltam > 0) {
      print('Olá, $nome! Faltam $faltam anos para você completar 100 anos.');
    } else if (faltam == 0) {
      print('Parabéns, $nome! Você tem exatamente 100 anos!');
    } else {
      print('Uau, $nome! Você já passou dos 100 anos há ${-faltam} anos!');
    }
  } else {
    print('Entrada inválida.');
  }
}