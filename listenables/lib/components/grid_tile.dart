import 'dart:math';

import 'package:flutter/material.dart';
import 'package:listenables/data/product_repository.dart';

class ProductsGridTile extends StatelessWidget {
  const ProductsGridTile({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final productRepository = ProductRepository();
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 130.0,
            width: MediaQuery.of(context).size.width / 3,
            child: Image.network(
              "https://picsum.photos/200/300?image=${Random().nextInt(85)}",
              fit: BoxFit.fill,
              scale: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Product ${index + 1} '),
              const SizedBox(width: 20),
              Text('R\$ ${Random().nextInt(100).toStringAsFixed(2)}'),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
