import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/serie/domain/entities/episode.dart';
import 'package:seriesradar_app/features/serie/domain/repositories/local_storage_repository.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/local_storage_provider.dart';

final viewedEpisodesProvider =
    StateNotifierProvider<ViewedEpisodesNotifier, Map<int, Episode>>((ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  final user = ref.watch(authProvider).user;
  return ViewedEpisodesNotifier(
      localStorageRepository: localStorageRepository, user: user!);
});

class ViewedEpisodesNotifier extends StateNotifier<Map<int, Episode>> {
  final LocalStorageRepository localStorageRepository;
  final User user;

  ViewedEpisodesNotifier({
    required this.localStorageRepository,
    required this.user,
  }) : super({});

  Future<void> toggleEpisodeViewed(Episode episode) async {
    await localStorageRepository.toggleEpisodeViewed(episode, user);
    final bool isEpisodeViewed = state[episode.id] != null;

    if (isEpisodeViewed) {
      state.remove(episode.id);
      state = {...state};
    } else {
      state = {...state, episode.id: episode};
    }
  }
}
