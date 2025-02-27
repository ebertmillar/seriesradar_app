import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:seriesradar_app/domain/datasources/local_storage_datasource.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';

class IsarLocalStorageDatasourceImpl extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarLocalStorageDatasourceImpl() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [SerieSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<bool> isSerieFavorite(int serieId) {
    // TODO: implement isSerieFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<Serie>> loadSeries({int limit = 10, offset = 0}) {
    // TODO: implement loadSeries
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavorite(Serie serie) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }
}
