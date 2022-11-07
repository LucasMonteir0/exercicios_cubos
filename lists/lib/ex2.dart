import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.green,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SobrancelhaWidget(),
              SobrancelhaWidget(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                OlhoWidget(),
                Icon(
                  Icons.arrow_downward_rounded,
                  size: 60,
                ),
                OlhoWidget(),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 360,
                height: 200,
                color: Colors.red,
              ),
              Dentes(gridDelegate: gridDelegate)
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Container(
              color: Colors.deepPurple.shade600,
            ),
          ))
        ],
      ),
    ));
  }
}

class Dentes extends StatelessWidget {
  const Dentes({
    Key? key,
    required this.gridDelegate,
  }) : super(key: key);

  final SliverGridDelegateWithFixedCrossAxisCount gridDelegate;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 300,
      child: GridView.count(
        childAspectRatio: 0.7,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        crossAxisCount: 6,
        shrinkWrap: true,
        children: List.generate(
            12,
            (index) => Container(
                  width: 200,
                  height: 100,
                  color: Colors.amber.shade200,
                )),
      ),
    );
  }
}

class OlhoWidget extends StatelessWidget {
  const OlhoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.remove_red_eye_outlined,
      size: 90,
    );
  }
}

class SobrancelhaWidget extends StatelessWidget {
  const SobrancelhaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_drop_up,
      size: 120,
      color: Colors.deepPurple.shade600,
    );
  }
}
