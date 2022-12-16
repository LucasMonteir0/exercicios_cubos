import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    this.onPressedArrow,
    required this.movieId,
  });

  final int movieId;
  final VoidCallback? onPressedArrow;

  @override
  Widget build(BuildContext context)  {
    final catalog = CatalogRepository();
    return Scaffold(
      body: FutureBuilder(
        future:  catalog.getDetails(movieId),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('BACK'),
                )
              ],
            ));
          }
          return Column(
            children: snapshot.data!
                .map<Widget>((movie) => Column(
                      children: [
                        Stack(children: [
                          Image.network(movie.backdropImage),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                        ]),
                      ],
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
