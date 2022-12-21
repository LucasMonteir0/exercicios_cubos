import '../../config/urls.dart';

class CatalogModel {
  CatalogModel(
      {required this.id,
      required this.posterImage,
      required this.backdropImage,
      required this.description,
      required this.title});

  final int id;
  final String posterImage;
  final String backdropImage;
  final String description;
  final String title;

  factory CatalogModel.fromMap(Map<String, dynamic> map) => CatalogModel(
        id: map['id'],
        posterImage: "${Urls.baseImageUrl}${map['poster_path'] ?? ''}",
        backdropImage: "${Urls.baseImageUrl}${map['backdrop_path']}",
        description: map['overview'],
        title: map['title'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'poster_path': posterImage,
        'backdrop_path': backdropImage,
        'overview': description,
        'title': title
      };
}
