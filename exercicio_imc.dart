void main() {
  final peso = 90;
  final altura = 1.90;
  var imc = peso / (altura * altura);
  // print(imc);
// para arredondar é só utilizar o toStringAsFixed que consegue transformar um double para uma string para decimais arredondados
  print(imc.toStringAsFixed(2));

  if (imc >= 30) {
    print('Pedro é do tamanho de um planeta');
  } else {
    print('Você não é uma jamanta');
  }

}

