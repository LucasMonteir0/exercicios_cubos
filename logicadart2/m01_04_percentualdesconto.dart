extension Calculate on double {
  double discountPercentage(other) => this * (discount / 100);
  double minus(other) => this - other;
}

final discount = 23;
void main() {
  double productPrice = 500;

  final discountPrice = productPrice.discountPercentage(productPrice);
  // final discountPrice = (productPrice * (discount / 100));
  final result = productPrice.minus(discountPrice);

  print('Preço do produto: R\$ $productPrice');
  print('Desconto de $discount%: R\$ $discountPrice');
  print('Preço do produto com desconto: R\$ $result');
}
