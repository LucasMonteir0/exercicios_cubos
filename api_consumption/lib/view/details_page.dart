import 'package:flutter/material.dart';

import '../config/colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.bannerImg,
    required this.description,
    required this.title,
  });

  final String bannerImg;
  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: heigth * 0.5,
                  width: width,
                  child: Image.network(
                    bannerImg,
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
                    title,
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
                    description,
                    style: theme.textTheme.bodyText1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
