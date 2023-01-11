import 'dart:math';

import 'package:flutter/material.dart';
import 'package:listenables/data/product_model.dart';

class ProductsGridTile extends StatelessWidget {
  const ProductsGridTile({
    super.key,
    required this.product,
    required this.onAdd,
  });

  final ProductModel product;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 130.0,
            width: MediaQuery.of(context).size.width / 3,
            child: Image.network(
              product.urlImage,
              fit: BoxFit.fill,
              scale: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(product.title),
              const SizedBox(width: 20),
              Text('R\$ ${product.price.toStringAsFixed(2)}'),
            ],
          ),
          ElevatedButton(
            onPressed: onAdd,
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
