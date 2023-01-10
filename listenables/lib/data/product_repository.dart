import 'dart:math';

import 'package:listenables/data/product_model.dart';

class ProductRepository {
  final List<ProductModel> productList = [
    ProductModel(
      name: 'Product',
      image: 'https://picsum.photos/200/300',
      price: Random().nextInt(100),
    )
  ];
}
