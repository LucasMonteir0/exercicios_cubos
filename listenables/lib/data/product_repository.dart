import 'package:listenables/data/product_model.dart';

class BuildProducts {
  static List<ProductModel> run(int numberProducts) {
    final products = List<ProductModel>.generate(
        numberProducts,
        (index) => ProductModel(
            urlImage: "https://picsum.photos/300/300?image=$index",
            price: index + ((index + 100) * 0.002) * 100,
            title: "imagem $index"));

    return products;
  }
}
