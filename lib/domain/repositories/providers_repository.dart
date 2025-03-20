import 'package:seriesradar_app/domain/entities/watch_provider.dart';

abstract class ProvidersRepository {
  Future<List<WatchProvider>> getTvWatchProvider();
}
