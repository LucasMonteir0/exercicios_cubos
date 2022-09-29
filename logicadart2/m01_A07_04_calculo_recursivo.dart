void main() {
  final num = 23;
  List<int> number = [];

  for (int i = 0; i <= num; i++) {
    number.add(i);
  }

  final result = number.reduce((v, e) => v + e);
  print('Todos os valores somados de 0 até $num: $result');
}
