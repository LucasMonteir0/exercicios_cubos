import 'dart:math';

void main() {
  final a = 5;
  final b = 12;
  final c = 13;

  if ((c < a + b) && (a < c + b) && (b < c + a)) {
    print('É um triângulo.');
    if ((a == b) && (b == c)) {
      print('É um Equilátero.');
    } else if ((a == b) || (b == c) || (a == c)) {
      print('É um Isósceles.');
    } else if ((a != b) && (a != c) && (b != c)) {
      print('É um Escaleno.');
    }
  } else {
    print('Não é um triângulo.');
  }

  if (pow(a, 2) + pow(b, 2) == pow(c, 2)) {
    print('É um triângulo retângulo');
  } else {
    print('Não é um triângulo retângulo.');
  }
}
