import 'package:flutter/material.dart';
import 'package:listenables/data/product_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;
  
  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      itemCount: products.length,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10.0,
        );
      },
      itemBuilder: (context, index) {
        return SizedBox(
          height: 100,
          child: Card(
            child: Row(children: [
              //
              Flexible(
                flex: 1,
                child: Image.network(
                  products[index].urlImage,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(products[index].title),
                      Text(products[index].price.toStringAsFixed(2)),
                    ],
                  )),
            ]),
          ),
        );
      },
    );
  }
}
