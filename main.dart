import 'dart:io';

// Problema 1: Calcular a média de um conjunto de números
double calcularMedia(List<double> numeros) {
  if (numeros.isEmpty) return 0;
  double soma = 0;
  for (var numero in numeros) {
    soma += numero;
  }
  return soma / numeros.length;
}

void problema1() {
  List<double> numeros = [];
  while (true) {
    stdout.write("Insira um número (ou 's' para parar): ");
    var input = stdin.readLineSync();
    if (input == 's') break;
    var numero = double.tryParse(input!);
    if (numero != null) {
      numeros.add(numero);
    } else {
      print("Entrada inválida. Tente novamente.");
    }
  }
  double media = calcularMedia(numeros);
  print("A média dos números é: $media");
}

// Problema 2: Soma dos dígitos de um número inteiro
int somaDigitos(int numero) {
  int soma = 0;
  while (numero != 0) {
    soma += numero % 10;
    numero ~/= 10;
  }
  return soma;
}

void problemas() {
  stdout.write("Insira um número inteiro: ");
  var input = stdin.readLineSync();
  var numero = int.tryParse(input!);
  if (numero != null) {
    int soma = somaDigitos(numero);
    print("A soma dos dígitos é: $soma");
  } else {
    print("Entrada inválida. Insira um número inteiro.");
  }
}

// Problema 3: Encontrar o segundo maior número em um array
int segundoMaior(List<int> numeros) {
  if (numeros.length < 2) return 0;
  numeros.sort();
  return numeros[numeros.length - 2];
}

void problema3() {
  List<int> numeros = [5, 10, 3, 8, 15];
  var segundoMaiorNumero = segundoMaior(numeros);
  print("O segundo maior número é: $segundoMaiorNumero");
}

// Problema 4: Verificar se uma string é um palíndromo
bool ehPalindromo(String texto) {
  texto = texto.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  return texto == texto.split('').reversed.join('');
}

void problema4() {
  stdout.write("Insira uma string: ");
  var texto = stdin.readLineSync();
  if (texto != null) {
    bool palindromo = ehPalindromo(texto);
    if (palindromo) {
      print("É um palíndromo.");
    } else {
      print("Não é um palíndromo.");
    }
  } else {
    print("Entrada inválida.");
  }
}

void main() {
  problema1();
  problema2();
  problema3();
  problema4();
}
