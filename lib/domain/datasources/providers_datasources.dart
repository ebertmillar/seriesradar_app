import 'package:seriesradar_app/domain/entities/watch_provider.dart';

abstract class ProvidersDatasources {
  Future<List<WatchProvider>> getTvWatchProvider();
}
