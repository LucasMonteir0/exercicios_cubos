import 'package:flutter/material.dart';
import 'pages/mapa_page.dart';
import 'pages/voos_page.dart';
import 'pages/passeios_page.dart';
import 'resources/strings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final trips = const [
    Trip(name: Strings.voos, icon: Icons.flight),
    Trip(name: Strings.passeios, icon: Icons.shopping_bag),
    Trip(name: Strings.mapa, icon: Icons.explore),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: trips.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              Strings.appName2,
              style: TextStyle(
                  color: Colors.blue.shade700, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.yellow.shade700,
            bottom: TabBar(
              tabs: trips
                  .map((trip) => Tab(
                        text: trip.name,
                        icon: Icon(
                          trip.icon,
                          color: Colors.blue.shade700,
                        ),
                      ))
                  .toList(),
              isScrollable: false,
            ),
          ),
          body: const TabBarView(children: [
            VoosPage(),
            PasseiosPage(),
            MapaPage(),
          ]),
        ),
      ),
    );
  }
}

class Trip {
  const Trip({
    required this.name,
    required this.icon,
  });

  final String name;
  final IconData icon;
}



