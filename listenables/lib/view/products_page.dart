import 'package:flutter/material.dart';
import 'package:listenables/components/grid_tile.dart';
import 'package:listenables/data/product_model.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({
    Key? key,
    required this.products,
    required this.valueNotifier,
  }) : super(key: key);

  final List<ProductModel> products;
  final ValueNotifier<List<ProductModel>> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 30,
      itemBuilder: (context, index) {
        return ProductsGridTile(
          onAdd: () {
            valueNotifier.value.add(products[index]);
          },
          product: products[index],
        );
      },
    );
  }
}
