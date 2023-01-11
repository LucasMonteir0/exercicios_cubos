import 'dart:math';

import 'package:flutter/material.dart';
import 'package:listenables/data/product_model.dart';
import 'package:listenables/data/product_repository.dart';
import 'package:listenables/view/cart_page.dart';
import 'package:listenables/view/products_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _pageController = PageController();
  final ValueNotifier<List<ProductModel>> _valueNotifier = ValueNotifier([]);

  int _selectedIndex = 0;
  late List<ProductModel> _products;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    _products = BuildProducts.run(30);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (page) {
            _selectedIndex = page;
          },
          children: [
            ProductsPage(
              valueNotifier: _valueNotifier,
              products: _products,
            ),
            ValueListenableBuilder<List<ProductModel>>(
                valueListenable: _valueNotifier,
                builder: (context, value, _) {
                  return CartPage(
                    products: value,
                  );
                }),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
