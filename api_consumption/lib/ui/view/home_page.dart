import 'package:api_consumption/ui/components/tabs/popular_movies_tab.dart';
import 'package:api_consumption/ui/components/tabs/toprated_movies_tab.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.onChangedSwitch,
    required this.switchValue,
  });
  final void Function(bool value) onChangedSwitch;
  final bool switchValue;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: AppBar(
            title: const Text('Mega Cine'),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(left: 4.0, top: 1.0),
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              width: 1,
                              color: MyColors.orange,
                            )),
                      ),
                    ),
                    Center(
                      child: Switch(
                        value: switchValue,
                        onChanged: onChangedSwitch,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            bottom: const TabBar(
              padding: EdgeInsets.only(right: 110.0),
              isScrollable: false,
              tabs: [
                Text('Populares'),
                Text('Mais avaliados'),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            PopularMoviesTab(),
            TopRatedMoviesTab(),
          ],
        ),
      ),
    );
  }
}
