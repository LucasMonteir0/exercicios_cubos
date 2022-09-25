void main() {
  final linhas = 6;
  int soma = 0;

  for (int index = 1; index <= linhas; index++) {
    String line = '';
    // print(line);
    for (int j = 1; j <= index; j++) {
      soma++;
      final separator = line.isEmpty ? '' : ' ';
      line += '$separator$soma';
    }

    print(line);
  }
 }
