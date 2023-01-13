import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:api_consumption/ui/components/film_card_widget.dart';
import 'package:api_consumption/ui/view/details_page.dart';
import 'package:flutter/material.dart';

class MoviesGridView extends StatelessWidget {
  const MoviesGridView({Key? key, required this.data}) : super(key: key);

  final List<CatalogModel> data;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16.0),
      childAspectRatio: 0.57,
      crossAxisCount: 3,
      children: data
          .map<Widget>((movies) => FilmCard(
                filmImage: movies.posterImage,
                filmName: movies.title,
                onFilmTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DetailsPage(
                        id: movies.id,
                      );
                    }),
                  );
                },
              ))
          .toList(),
    );
  }
}
