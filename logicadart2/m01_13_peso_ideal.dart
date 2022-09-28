void main() {
  final sexo = 'f'.toUpperCase();
  final altura = 1.65;

  if (sexo == 'F') {
    final mulher = (62.1 * altura) - 44.7;
    print('Peso ideal: $mulher Kg');
  } else if (sexo == 'm' || sexo == 'M') {
    final homem = (72.7 * altura) - 58;
    print('Peso ideal: $homem Kg');
  } else {
    print('Colocar valores válidos');
  }
}
