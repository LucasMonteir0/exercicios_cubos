void main() {
  int totalParcelas = 60;
  int pagasParcelas = 18;
  double valorParcelas = 566.78;

  final valorTotalCalc = valorParcelas * totalParcelas;
  final saldoDevedorCalc = valorTotalCalc - (valorParcelas * pagasParcelas);
  final valorTotal = valorTotalCalc.toStringAsFixed(2);
  final saldoDevedor = saldoDevedorCalc.toStringAsFixed(2);

  print('Valor total do Consórcio: R\$ $valorTotal');
  print('Saldo devedor: R\$ $saldoDevedor');
}
