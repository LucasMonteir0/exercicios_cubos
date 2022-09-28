void main() {
  final num = 5;
  List<int> number = [];

  for (int i = 1; i <= num; i++) {
    number.add(i);
    
  }
  print(
        number.toString().replaceAll('[', '').replaceAll(']', '') + '.');
}
