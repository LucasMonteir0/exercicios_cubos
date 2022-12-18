import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({
    required this.onFilmTap,
    required this.filmImage,
    required this.filmName,
    super.key,
  });

  final String filmImage;
  final String filmName;
  final VoidCallback? onFilmTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onFilmTap,
      child: SizedBox(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.amber,
                height: 138,
                width: 101,
                child: Image.network(
                  filmImage,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: SizedBox(
                  height: 33.0,
                  width: 101.0,
                  child: Flexible(
                    child: Text(
                      filmName,
                      style: theme.textTheme.bodyText1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
