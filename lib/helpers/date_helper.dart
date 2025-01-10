import 'package:intl/intl.dart';

class DateHelper {
  /// Convierte una cadena ISO a un objeto `DateTime`.
  static DateTime parseDate(String? isoDate) {
    if (isoDate == null || isoDate.isEmpty) {
      return DateTime(1900, 1, 1); // Fecha predeterminada.
    }
    return DateTime.parse(isoDate);
  }

  /// Convierte un `DateTime` a una cadena en formato `dd/MM/yyyy`.
  static String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }
}
