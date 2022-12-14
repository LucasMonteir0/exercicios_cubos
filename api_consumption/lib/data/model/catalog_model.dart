import '../../config/urls.dart';

class CatalogModel {
  CatalogModel(
      {required this.id,
      required this.image,
      required this.description,
      required this.title});

  final int id;
  final String image;
  final String description;
  final String title;

  factory CatalogModel.fromMap(Map<String, dynamic> map) => CatalogModel(
        id: map['id'],
        image: "${Urls.baseImageUrl}${map['poster_path']}",
        description: map['overview'],
        title: map['title'],
      );

  Map<String, dynamic> toMap() =>
      {'id': id, 'poster_path': image, 'overview': description, 'title': title};
}
