import 'package:flutter/material.dart';
import 'package:tabs/resources/images.dart';
import 'package:tabs/resources/strings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final dogs = const [
    Dog(name: Strings.dachshund, cover: Images.dachshund),
    Dog(name: Strings.golden, cover: Images.golden),
    Dog(name: Strings.bulldog, cover: Images.bulldog),
    Dog(name: Strings.pug, cover: Images.pug),
    Dog(name: Strings.spaniel, cover: Images.spaniel),
    Dog(name: Strings.husky, cover: Images.husky),
    Dog(name: Strings.borderCollie, cover: Images.borderCollie),
    Dog(name: Strings.beagle, cover: Images.beagle),
    Dog(name: Strings.weimaraner, cover: Images.weimaraner),
    Dog(name: Strings.dalmata, cover: Images.dalmata),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: dogs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.appName),
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              tabs: dogs.map((dog) => Tab(text: dog.name)).toList(),
              isScrollable: true,
            ),
          ),
          body: TabBarView(children: [DogsPage(dogs: dogs)]),
        ),
      ),
    );
  }
}

class Dog {
  const Dog({
    required this.name,
    required this.cover,
  });

  final String name;
  final String cover;
}

class DogTab extends StatelessWidget {
  const DogTab({super.key, required this.dog});

  final Dog dog;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(dog.cover),
    );
  }
}

class DogsPage extends StatelessWidget {
  const DogsPage({super.key, required this.dogs});

  final List<Dog> dogs;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        for (final dog in dogs) DogTab(dog: dog),
      ],
    );
  }
}
