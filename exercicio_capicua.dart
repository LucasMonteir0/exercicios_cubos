//Numeros que são o mesmo valor da direita pra esquerda e vice-versa

void main() {
  int num = 10201;
  final digit1 = num ~/ 10000;
  num %= 10000;

  final digit2 = num ~/ 1000;
  num %= 1000;

  final digit3 = num ~/ 100;
  num %= 100;

  final digit4 = num ~/ 10;
  final digit5 = num % 10;

  print('$digit1$digit2$digit3$digit4$digit5');

  final firstPart = digit1 == digit5;
  final scndPart = digit2 == digit4;

  if ( firstPart && scndPart){
    print('Capicuia.');
    } else {
      print('Não é capicuia.');
    }
  }


