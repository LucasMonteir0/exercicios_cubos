class ProductModel {
  final String name;
  final String image;
  final int price;
  final bool onCart;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    this.onCart = false,
  });
}
