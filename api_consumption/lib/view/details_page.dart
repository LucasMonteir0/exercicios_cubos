import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:flutter/material.dart';

import '../config/colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final catalog = CatalogRepository();
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder<CatalogModel>(
        future: catalog.getDetails(id),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: heigth * 0.5,
                    width: width,
                    child: Image.network(
                      snapshot.data!.backdropImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: MyColors.orange,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 25.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data!.title,
                      style: theme.textTheme.headline1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Sinopse',
                        style: theme.textTheme.bodyText2,
                      ),
                    ),
                    Text(
                      snapshot.data!.description,
                      style: theme.textTheme.bodyText1,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      )),
    );
  }
}
