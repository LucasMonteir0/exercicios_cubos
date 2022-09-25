void main() {
  final num = 5;
  int fatorial = 1;

  for (int i = 2; i <= num; i++) {
    fatorial *= i;
  }

  print('$num = $fatorial');
}
