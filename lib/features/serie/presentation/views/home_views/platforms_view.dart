import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/series_streaming_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/watch_providers_tv/watch_provider_repository.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/custom_appbar.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/streaming_platform/platform_serie_masonry.dart';

class PlatformsView extends ConsumerStatefulWidget {
  const PlatformsView({super.key});

  @override
  PlatfomsViewState createState() => PlatfomsViewState();
}

class PlatfomsViewState extends ConsumerState<PlatformsView> {
  String? selectedProvider;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    selectedProvider = 'Netflix';
    ref.read(seriesByProvider('Netflix').notifier).loadNextPage();
    ref.read(seriesByProvider('amazon').notifier).loadNextPage();
    ref.read(seriesByProvider('apple').notifier).loadNextPage();
    ref.read(seriesByProvider('Disney Plus').notifier).loadNextPage();
    ref.read(seriesByProvider('max').notifier).loadNextPage();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tvWatchProviders = ref.watch(tvWatchProvidersRepostory);
    final netflixSeries = ref.watch(seriesByProvider('Netflix'));
    final disneySeries = ref.watch(seriesByProvider('Disney Plus'));
    final primeVideoSeries = ref.watch(seriesByProvider('amazon'));
    final appleTvSeries = ref.watch(seriesByProvider('apple'));
    final maxSeries = ref.watch(seriesByProvider('max'));

    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Column(
      children: [
        const CustomAppbar(),
        tvWatchProviders.when(
          data: (providers) {
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Plataformas de streaming',
                  style: titleStyle,
                ),
                const SizedBox(height: 10),
                // ListView.builder horizontal para mostrar los proveedores de contenido
                SizedBox(
                  height: 70, // Ajuste de altura
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: providers.length,
                    itemBuilder: (context, index) {
                      final provider = providers[index];
                      bool isSelected =
                          selectedProvider == provider.providerName;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedProvider = provider.providerName;
                            _scrollController.jumpTo(0);
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(
                              milliseconds: 200), // Duración de la animación
                          curve: Curves.easeInOut,
                          width: 65,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10), // Mantener padding horizontal
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedScale(
                                duration: const Duration(milliseconds: 200),
                                scale:
                                    isSelected ? 1.2 : 1.0, // Agrandado suave
                                child: (provider.logoPath.isNotEmpty)
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          provider.logoPath,
                                          width: 45,
                                          height: 45,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : const Icon(Icons.image, size: 45),
                              ),
                              // Línea debajo del ícono
                              if (isSelected)
                                Container(
                                  margin: const EdgeInsets.only(
                                      top:
                                          10), // Distancia entre el ícono y la línea
                                  height: 1, // Grosor de la línea
                                  width: 45, // Largo de la línea
                                  color: Colors.black45, // Color de la línea
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Mostrar el nombre del proveedor seleccionado debajo de la lista
                if (selectedProvider != null)
                  Container(
                    padding: const EdgeInsets.only(top: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: FadeInUp(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _getTitleForProvider(selectedProvider!),
                            style: titleStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error al cargar proveedores: $error'),
        ),
        if (selectedProvider == 'Netflix')
          PlatformSerieMasonry(
            scrollController: _scrollController,
            series: netflixSeries,
            loadNextPage: () =>
                ref.read(seriesByProvider('Netflix').notifier).loadNextPage(),
          ),
        if (selectedProvider == 'Disney Plus')
          PlatformSerieMasonry(
            scrollController: _scrollController,
            series: disneySeries,
            title: 'Series en Disney +',
            loadNextPage: () => ref
                .read(seriesByProvider('Disney Plus').notifier)
                .loadNextPage(),
          ),
        if (selectedProvider == 'Amazon Prime Video')
          PlatformSerieMasonry(
            scrollController: _scrollController,
            series: primeVideoSeries,
            title: 'Series en Prime Video',
            loadNextPage: () =>
                ref.read(seriesByProvider('amazon').notifier).loadNextPage(),
          ),
        if (selectedProvider == 'Apple TV+')
          PlatformSerieMasonry(
            scrollController: _scrollController,
            series: appleTvSeries,
            title: 'Series en Apple TV',
            loadNextPage: () =>
                ref.read(seriesByProvider('apple').notifier).loadNextPage(),
          ),
        if (selectedProvider == 'Max')
          PlatformSerieMasonry(
            scrollController: _scrollController,
            series: maxSeries,
            title: 'Series en MAX',
            loadNextPage: () =>
                ref.read(seriesByProvider('max').notifier).loadNextPage(),
          ),
      ],
    );
  }
}

String _getTitleForProvider(String provider) {
  switch (provider) {
    case 'Disney Plus':
      return 'Series en Disney +';
    case 'Amazon Prime Video':
      return 'Series en Prime Video';
    default:
      return 'Series en $provider';
  }
}
