import 'package:isar/isar.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';

part 'user.g.dart';

@collection
class User {
  Id? isarId; // ID interno de Isar

  final String email;
  final String fullName;
  final String passwordHash; // Almacenamos el hash de la contraseña
  String? token; // Token de sesión generado al iniciar sesión

  final IsarLinks<SerieDetails> favoritesSeries = IsarLinks<SerieDetails>();

  User({
    required this.email,
    required this.fullName,
    required this.passwordHash,
    this.token,
  });
}
