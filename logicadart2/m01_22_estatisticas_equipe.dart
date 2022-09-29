void main() {
  List jogadores = [
    ["Maurício", 8, 4, 18, 12, 2, 1],
    ["Marcelo", 15, 10, 8, 5, 21, 10],
    ["Tande", 11, 6, 14, 12, 15, 11],
    ["Giovane", 11, 5, 10, 8, 18, 12],
    ["Paulo", 9, 2, 15, 12, 15, 10],
    ["Carlos", 10, 3, 10, 3, 12, 8],
  ];

  int saquesTotal = 0;
  int saquesEfetivos = 0;
  int bloqueiosTotal = 0;
  int bloqueiosEfetivos = 0;
  int ataquesTotal = 0;
  int ataquesEfetivos = 0;

  print('-' * 30);
  jogadores.forEach((v) {
    final saque = ((v[2] / v[1]) * 100).toStringAsFixed(1);
    final bloqueio = ((v[4] / v[3]) * 100).toStringAsFixed(1);
    final ataques = ((v[6] / v[5]) * 100).toStringAsFixed(1);
    print('Nome : ${v[0]}');
    print('Saque: ${v[2]}/${v[1]}: ($saque%) ');
    print('Bloqueio: ${v[4]}/${v[3]}: ($bloqueio%) ');
    print('Ataques: ${v[6]}/${v[5]}: ($ataques%) ');
    print('-' * 30);
    saquesTotal += int.parse(v[1].toString());
    saquesEfetivos += int.parse(v[2].toString());
    bloqueiosTotal += int.parse(v[3].toString());
    bloqueiosEfetivos += int.parse(v[4].toString());
    ataquesTotal += int.parse(v[5].toString());
    ataquesEfetivos += int.parse(v[6].toString());
  });


  print('Resultado (equipe)');
  print('Pontos de Saque: $saquesEfetivos/$saquesTotal (${(saquesEfetivos/saquesTotal * 100).toStringAsFixed(2)}%)');
  print('Pontos de Bloqueio: $bloqueiosEfetivos/$bloqueiosTotal (${(bloqueiosEfetivos/bloqueiosTotal * 100).toStringAsFixed(2)}%)');
  print('Pontos de Ataque: $ataquesEfetivos/$ataquesTotal (${(ataquesEfetivos/ataquesTotal * 100).toStringAsFixed(2)}%)');
  print('-' * 30);
}
