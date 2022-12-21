import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:dio/dio.dart';

import '../../config/urls.dart';

class CatalogRepository {
  final _dio = Dio();
  static const apiKey = 'c7c7d29097a2cdcaea386e1faf36f826';

  Future<List<CatalogModel>> getPopular() async {
    try {
      final response = await _dio.get(
          '${Urls.baseUrl}${Urls.popularUrl}?api_key=$apiKey&language=pt-BR&page=1');

      final List<CatalogModel> catalogs = response.data['results']
          .map<CatalogModel>((map) => CatalogModel.fromMap(map))
          .toList();
      return catalogs;
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        throw Exception('Erro 401 - Api Key Inválida');
      } else if (e.response!.statusCode == 404) {
        throw Exception('Erro 404 - Arquivo não encontrado');
      }
      throw e.error;
    } catch (e) {
      throw Exception();
    }
  }

  Future<List<CatalogModel>> getTopRated() async {
    try {
      final response = await _dio.get(
          '${Urls.baseUrl}${Urls.topRatedUrl}?api_key=$apiKey&language=pt-BR&page=1');

      final List<CatalogModel> catalogs = response.data['results']
          .map<CatalogModel>((map) => CatalogModel.fromMap(map))
          .toList();
      return catalogs;
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        throw Exception('Erro 401 - Api Key Inválida');
      } else if (e.response!.statusCode == 404) {
        throw Exception('Erro 404 - Arquivo não encontrado');
      }
      throw e.error;
    } catch (e) {
      throw Exception();
    }
  }

  Future<CatalogModel> getDetails(int id) async {
    try {
      final response =
          await _dio.get('${Urls.baseUrl}/$id?api_key=$apiKey&language=pt-BR');

      final CatalogModel catalogs = CatalogModel.fromMap(response.data);
      return catalogs;
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        throw Exception('Erro 401 - Api Key Inválida');
      } else if (e.response!.statusCode == 404) {
        throw Exception('Erro 404 - Arquivo não encontrado');
      }
      throw e.error;
    } catch (e) {
      throw Exception();
    }
  }
}
