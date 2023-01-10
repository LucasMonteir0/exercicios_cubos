import 'package:flutter/material.dart';
import 'package:listenables/components/grid_tile.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 30,
      itemBuilder: (context, index) {
        return ProductsGridTile(
          index: index,
        );
      },
    );
  }
}
