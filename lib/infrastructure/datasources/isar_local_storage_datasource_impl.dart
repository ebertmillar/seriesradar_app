import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:seriesradar_app/domain/datasources/local_storage_datasource.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';

class IsarLocalStorageDatasourceImpl extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarLocalStorageDatasourceImpl() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [SerieDetailsSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<bool> isSerieFavorite(int serieId) async {
    final isar = await db;

    final SerieDetails? isFavoriteSerie =
        await isar.serieDetails.filter().idEqualTo(serieId).findFirst();

    return isFavoriteSerie != null;
  }

  @override
  Future<List<SerieDetails>> loadSeries({int limit = 10, offset = 0}) async {
    final isar = await db;
    return isar.serieDetails.where().offset(offset).limit(limit).findAll();
  }

  @override
  Future<void> toggleFavorite(SerieDetails serie) async {
    final isar = await db;

    final favoriteSerie =
        await isar.serieDetails.filter().idEqualTo(serie.id).findFirst();

    if (favoriteSerie != null) {
      // Borrar
      isar.writeTxnSync(
          () => isar.serieDetails.deleteSync(favoriteSerie.isarId!));
      return;
    }

    // Insertar
    isar.writeTxnSync(() => isar.serieDetails.putSync(serie));
  }
}
