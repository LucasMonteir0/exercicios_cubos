import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:api_consumption/components/catalog_type_widget.dart';
import 'package:api_consumption/view/details_page.dart';
import 'package:flutter/material.dart';

import '../config/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.onChangedSwitch,
    required this.switchValue,
  });

  // final VoidCallback onFilmTap;
  final void Function(bool value) onChangedSwitch;
  final bool switchValue;

  @override
  Widget build(BuildContext context) {
    final catalog = CatalogRepository();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
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
                            border:
                                Border.all(width: 1, color: MyColors.orange)),
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
              padding: EdgeInsets.only(right: 130.0),
              isScrollable: false,
              tabs: [
                Text('Populares'),
                Text('Mais avaliados'),
              ],
            ),
          ),
          body: TabBarView(children: [
            CatalogType(
              future: catalog.getPopular(),
            ),
            CatalogType(
              future: catalog.getTopRated(),
            ),
          ])),
    );
  }
}
