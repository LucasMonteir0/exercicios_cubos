import 'package:api_consumption/theme.dart';
import 'package:api_consumption/view/details_page.dart';
import 'package:api_consumption/view/home_page.dart';
import 'package:flutter/material.dart';

import 'data/model/catalog_model.dart';

class MegaCineApp extends StatefulWidget {
  const MegaCineApp({super.key});

  @override
  State<MegaCineApp> createState() => _MegaCineAppState();
}

class _MegaCineAppState extends State<MegaCineApp> {
  final PageController pageController = PageController();
  bool _isDark = false;
  ThemeData theme = MyTheme.light();
  int _currentPage = 0;

  void switchTheme(bool value) {
    if (_isDark) {
      theme = MyTheme.light();
    } else {
      theme = MyTheme.dark();
    }

    setState(() {
      _isDark = !_isDark;
    });
  }

  void selectedPage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void backPage() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(
        switchValue: _isDark,
        onChangedSwitch: switchTheme,
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
