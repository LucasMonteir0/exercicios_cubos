void main() {
  final peso = 67;
  final altura = 1.74;
  var imc = peso / (altura * altura);
  // print(imc);
// para arredondar é só utilizar o toStringAsFixed que consegue transformar um double para uma string para decimais arredondados
  print(imc.toStringAsFixed(2));

  String classificacao;
  if (imc < 18.5) {
    classificacao = 'Abaixo do peso.';
  } else if (imc < 25) {
    classificacao = 'Peso Ideal.';
  } else if (imc < 30) {
    classificacao = 'Sobrepeso.';
  } else {
    classificacao = 'Obesidade.';
  }
  print(classificacao);
}
