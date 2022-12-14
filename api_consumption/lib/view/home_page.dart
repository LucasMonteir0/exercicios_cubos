import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/model/catalog_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final catalog = CatalogRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder<List<CatalogModel>>(
            future: catalog.getPopular(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                  children: snapshot.data!
                      .map<Widget>((movies) => Image.network(movies.image))
                      .toList());
            }));
  }
}
