void main() {
  // Variaveis Input
  final nome = 'Mauricio';
  final saques = 8;
  final saquesEfetivos = 4;
  final bloqueios = 18;
  final bloqueiosEfetivos = 12;
  final ataques = 2;
  final ataquesEfetivos = 1;

// Claculo da operação
  final playerImpact = saques + bloqueios + ataques;
  final truePlayerImpact = saquesEfetivos + bloqueiosEfetivos + ataquesEfetivos;
  final calcPlayerImpact = (truePlayerImpact / playerImpact) * 100;
  final playerStatics = calcPlayerImpact.toStringAsFixed(2) + '%';

// Output
  print('Jogador: $nome');
}
