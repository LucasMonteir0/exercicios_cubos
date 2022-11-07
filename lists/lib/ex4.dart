import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData theme = MyTheme.light();
  bool isDark = false;

  void themeSwitch(bool value) {
    if (isDark) {
      theme = MyTheme.light();
    } else {
      theme = MyTheme.dark();
    }
    isDark = !isDark;

    setState(() {});
  }

  SliverGridDelegateWithFixedCrossAxisCount gridDelegate =
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: isDark
                ? const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                        Color(0xFF194365),
                        Color(0xFF202727),
                      ]))
                : const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFFC0C5C6), Color(0xFFa7bbc9)])),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: MyLogoBar(),
                ),
                SizedBox(
                    height: 520,
                    child: MyGridVew(
                      onPressedCard: () {
                        setState(() {});
                      },
                    )),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(isDark ? 'Light Mode' : 'Dark Mode',
                            style: const TextStyle(fontSize: 15)),
                        Switch(
                          value: isDark,
                          onChanged: themeSwitch,
                          activeColor: const Color(0xFF7E97A7),
                          activeTrackColor: const Color(0xFF1D415B),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyLogoBar extends StatelessWidget {
  const MyLogoBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.home_outlined,
            size: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'SWEET HOME',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'What would you like to monitor? ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyGridVew extends StatelessWidget {
  const MyGridVew({super.key, required this.onPressedCard});

  final VoidCallback onPressedCard;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 5.0),
      crossAxisSpacing: 1.0,
      mainAxisSpacing: 1.0,
      crossAxisCount: 2,
      children: [
        MyGridTile(
          icon: Icons.lightbulb_outline,
          text: 'Lights',
          onPressedCard: onPressedCard,
        ),
        MyGridTile(
          icon: Icons.thermostat,
          text: 'Temperature',
          onPressedCard: onPressedCard,
        ),
        MyGridTile(
          icon: Icons.water_rounded,
          text: 'Laundry',
          onPressedCard: onPressedCard,
        ),
        MyGridTile(
          icon: Icons.security_rounded,
          text: 'Security',
          onPressedCard: onPressedCard,
        ),
        MyGridTile(
          icon: Icons.wifi_rounded,
          text: 'Wi-fi',
          onPressedCard: onPressedCard,
        ),
        MyGridTile(
          icon: Icons.desktop_windows_rounded,
          text: 'Televisor',
          onPressedCard: onPressedCard,
        ),
      ],
    );
  }
}

class MyGridTile extends StatefulWidget {
  const MyGridTile(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressedCard});

  final IconData icon;
  final String text;
  final VoidCallback onPressedCard;

  @override
  State<MyGridTile> createState() => _MyGridTileState();
}

class _MyGridTileState extends State<MyGridTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressedCard();
        isSelected = !isSelected;
      },
      child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          // color: isSelected ? Colors.black38 : Colors.amber.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Icon(
                  widget.icon,
                  size: 50,
                ),
              ),
              Text(widget.text)
            ],
          )),
    );
  }
}

class MyTheme {
  static ThemeData light() {
    return ThemeData(
      // scaffoldBackgroundColor: LinearGradient(colors: [Colors.black, Colors.white]),
      brightness: Brightness.light,
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 30),
        bodyText2: TextStyle(
            fontSize: 20,
            color: Color(0xFF124165),
            fontWeight: FontWeight.bold),
        // button: TextStyle(fontSize: 30),
      ),
      iconTheme: const IconThemeData(color: Color(0xFF124165)),
      cardTheme: const CardTheme(color: Color(0xFF7E97A7)),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 30),
        bodyText2: TextStyle(
            fontSize: 20,
            color: Color(0xFFA0AEB7),
            fontWeight: FontWeight.bold),
      ),
      iconTheme: const IconThemeData(color: Color(0xFFA0AEB7)),
      cardTheme: const CardTheme(color: Color(0xFF1D415B)),
    );
  }
}
