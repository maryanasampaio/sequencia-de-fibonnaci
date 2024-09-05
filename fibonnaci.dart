import 'dart:io';

void main() {
  bool pertenceFibonacci(int numero) {
    if (numero == 0) return true;
    if (numero == 1) return true;

    int a = 0;
    int b = 1;

    while (b < numero) {
      int proximo = a + b;
      a = b;
      b = proximo;
    }

    return b == numero;
  }

  print('Digite um número:');
  int? numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print('Por favor, insira um número inteiro.');
    return;
  }

  if (pertenceFibonacci(numero)) {
    print('$numero pertence à sequência de Fibonacci.');
  } else {
    print('$numero não pertence à sequência de Fibonacci.');
  }
}
