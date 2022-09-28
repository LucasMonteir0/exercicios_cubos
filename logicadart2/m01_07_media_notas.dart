void main() {
  final gradeNotas = [7, 6.3, 8];
  
  final mediaFinalCalc = gradeNotas.reduce((v, e) => v + e) / gradeNotas.length;
  final mediaFinal = mediaFinalCalc.toStringAsFixed(1);
  print('Média: $mediaFinal');
}
