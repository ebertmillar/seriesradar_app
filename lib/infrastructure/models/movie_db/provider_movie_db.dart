class ProviderMovieDB {
  final String logoPath;
  final String providerName;
  final int providerId;

  ProviderMovieDB({
    required this.logoPath,
    required this.providerName,
    required this.providerId,
  });

  factory ProviderMovieDB.fromJson(Map<String, dynamic> json) =>
      ProviderMovieDB(
        logoPath: json["logo_path"] ?? '',
        providerName: json["provider_name"] ?? 'Desconocido',
        providerId: json["provider_id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "logo_path": logoPath,
        "provider_name": providerName,
        "provider_id": providerId,
      };
}
