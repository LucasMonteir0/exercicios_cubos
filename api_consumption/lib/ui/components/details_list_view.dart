import 'package:api_consumption/config/colors.dart';
import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:flutter/material.dart';

class DetailsListView extends StatelessWidget {
  const DetailsListView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final CatalogModel data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Stack(
          children: [
            SizedBox(
              height: heigth * 0.5,
              width: width,
              child: Image.network(
                data.backdropImage,
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
                data.title,
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
                data.description,
                style: theme.textTheme.bodyText1,
              ),
            ],
          ),
        )
      ],
    );
  }
}
