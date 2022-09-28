void main() {
  double product = 157.34;
  final discountCalc = (product * 0.1);
  final discount = discountCalc.toStringAsFixed(2);
  final finalPriceCalc = product - discountCalc;
  final finalPrice = finalPriceCalc.toStringAsFixed(2);

  print('Preço do produto: R\$ $product');
  print('Desconto de 10%: R\$ $discount');
  print('Preço final: R\$ $finalPrice');
}
