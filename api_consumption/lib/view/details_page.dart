import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.onPressedArrow});

  final String getId = '436270';
  final VoidCallback onPressedArrow;

  @override
  Widget build(BuildContext context) {
    final catalog = CatalogRepository();
    return Scaffold(
      body: FutureBuilder(
        future: catalog.getPopular(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                ElevatedButton(
                  onPressed: onPressedArrow,
                  child: const Text('BACK'),
                )
              ],
            ));
          }
          return ListView(
            children: snapshot.data!
                .map<Widget>((movie) => Column(
                      children: [
                        Stack(children: [
                          Image.network(movie.backdropImage),
                          IconButton(
                            onPressed: onPressedArrow,
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
