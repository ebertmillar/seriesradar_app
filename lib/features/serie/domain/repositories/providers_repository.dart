import 'package:seriesradar_app/features/serie/domain/entities/watch_provider.dart';

abstract class ProvidersRepository {
  Future<List<WatchProvider>> getTvWatchProvider();
}
