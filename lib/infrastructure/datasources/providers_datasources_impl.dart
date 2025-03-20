import 'package:dio/dio.dart';
import 'package:seriesradar_app/config/constans/environment.dart';
import 'package:seriesradar_app/domain/datasources/providers_datasources.dart';
import 'package:seriesradar_app/domain/entities/watch_provider.dart';
import 'package:seriesradar_app/infrastructure/mappers/provider_mapper.dart';
import 'package:seriesradar_app/infrastructure/models/movie_db/movie_db_providers_response.dart';

class ProvidersDatasourcesImpl extends ProvidersDatasources {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDBKey,
    'language': 'es-ES' // Configuración del idioma
  }));

  List<WatchProvider> _jsonToProvider(Map<String, dynamic> json) {
    final providerDBResponse = MovieDbProviderResponse.fromJson(json);

    // Convertir los resultados en entidades Provider
    final List<WatchProvider> watchProvider = providerDBResponse.results
        .map((providerDB) => ProviderMapper.providerDBtoEntity(providerDB))
        .toList();

    return watchProvider;
  }

  @override
  Future<List<WatchProvider>> getTvWatchProvider() async {
    try {
      final response = await dio.get(
        '/watch/providers/tv',
        queryParameters: {
          'watch_region': 'ES',
        },
      );

      // Imprimir los datos de la respuesta para verificar si se están obteniendo
      print('Verificando si se obtienen datos: ${response.data}');

      // Mapeo de la respuesta JSON a objetos WatchProvider
      List<WatchProvider> providers = _jsonToProvider(response.data);

      // Filtrando los proveedores de interés
      List<String> targetProviders = [
        "Netflix",
        "Max",
        "Disney Plus",
        "Amazon Prime Video",
        "Apple TV+"
      ];

      // Filtramos los proveedores que están en la lista de interés
      final providersResult = providers
          .where((provider) => targetProviders.contains(provider.providerName))
          .toList();

      // Imprimir los proveedores filtrados
      print('Proveedores filtrados: $providersResult');
      print('Código de estado: ${response.statusCode}');

      return providersResult;
    } catch (e) {
      print('Error al obtener los proveedores: $e');
      return []; // Devuelve una lista vacía en caso de error
    }
  }
}
