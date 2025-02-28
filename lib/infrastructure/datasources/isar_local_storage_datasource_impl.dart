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
  Future<bool> isSerieFavorite(int serieId) async {
    final isar = await db;

    final Serie? isFavoriteSerie =
        await isar.series.filter().idEqualTo(serieId).findFirst();

    return isFavoriteSerie != null;
  }

  @override
  Future<List<Serie>> loadSeries({int limit = 10, offset = 0}) async {
    final isar = await db;
    return isar.series.where().offset(offset).limit(limit).findAll();
  }

  @override
  Future<void> toggleFavorite(Serie serie) async {
    final isar = await db;

    final favoriteSerie =
        await isar.series.filter().idEqualTo(serie.id).findFirst();
  }
}
