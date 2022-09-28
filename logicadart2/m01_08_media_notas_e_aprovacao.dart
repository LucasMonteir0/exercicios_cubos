void main() {
  final gradeNotas = [7, 6.3, 8, 5.5];

  final mediaFinalCalc = gradeNotas.reduce((v, e) => v + e) / gradeNotas.length;
  final mediaFinal = mediaFinalCalc.toStringAsFixed(1);
  print('Média: $mediaFinal');

  if (mediaFinalCalc >= 6) {
    print('Aprovado!');
  } else {
    print('Reprovado!');
  }
}
