import 'package:seriesradar_app/features/serie/domain/entities/watch_provider.dart';

abstract class ProvidersDatasources {
  Future<List<WatchProvider>> getTvWatchProvider();
}
