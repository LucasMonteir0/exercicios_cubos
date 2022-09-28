void main() {
  final int ano = 1996;

  if (ano % 4 == 0 && ano % 100 != 0 || ano % 400 == 0) {
    print('Ano bissexto');
  }
  //  else {
  //     print('Não é ano bissexto');
  // }
}
