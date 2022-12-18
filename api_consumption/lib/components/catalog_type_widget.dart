import 'package:api_consumption/view/details_page.dart';
import 'package:flutter/material.dart';

import 'film_card_widget.dart';
import '../data/model/catalog_model.dart';

class CatalogType extends StatelessWidget {
  const CatalogType({
    Key? key,
    required this.future,
  }) : super(key: key);

  final Future<List<CatalogModel>> future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CatalogModel>>(
        future: future,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.count(
            padding: const EdgeInsets.all(16.0),
            childAspectRatio: 0.63,
            crossAxisCount: 3,
            children: snapshot.data!
                .map<Widget>((movies) => FilmCard(
                      filmImage: movies.posterImage,
                      filmName: movies.title,
                      onFilmTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsPage(
                              bannerImg: movies.backdropImage,
                              description: movies.description,
                              title: movies.title,
                            );
                          }),
                        );
                      },
                    ))
                .toList(),
          );
        });
  }
}
